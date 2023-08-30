import 'package:client_app/gen/color_schemes.g.dart';
import 'package:client_app/gen/fonts.gen.dart';
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@isTest
void testMaterialAppCombo({
  required ProviderScope Function(
    BuildContext context,
  ) builder,
  required Type type,
  required String testName,
  ThemeData? themeData,
  Clock? fixedClock,
}) {
  for (final device in TestDeviceSize.values) {
    for (final textScaleFactor in [0.75, 1.0, 1.25, 1.5]) {
      final name = '$testName.${device.name}_$textScaleFactor';

      testWidgets(
        name,
        (tester) async {
          await withClock(
            fixedClock ?? const Clock(),
            () async {
              await tester.pumpMaterialApp(
                builder,
                size: device.size,
                textScaleFactor: textScaleFactor,
                themeData: themeData,
              );
            },
          );

          await expectLater(
            find.byType(type),
            matchesGoldenFile(
              'goldens/$name.png',
            ),
          );
        },
        tags: ['golden'],
      );
    }
  }
}

enum TestDeviceSize {
  iPhone11ProMax,
  iPhone8Plus,
  iPadPro12_9,
  // ignore: constant_identifier_names
  Pixel4XL,
  // ignore: constant_identifier_names
  Nexus9,
  ;

  Size get size => switch (this) {
        TestDeviceSize.iPhone11ProMax => const Size(414, 896),
        TestDeviceSize.iPhone8Plus => const Size(414, 736),
        TestDeviceSize.iPadPro12_9 => const Size(1024, 1366),
        TestDeviceSize.Pixel4XL => const Size(412, 869),
        TestDeviceSize.Nexus9 => const Size(1024, 768),
      };
}

extension WidgetTesterExtension on WidgetTester {
  Future<void> pumpMaterialApp(
    WidgetBuilder builder, {
    required Size size,
    required double textScaleFactor,
    required ThemeData? themeData,
  }) async {
    await binding.setSurfaceSize(
      size,
    );
    addTearDown(
      () => binding.setSurfaceSize(null),
    );

    await binding.setLocales(
      [const Locale('ja', 'JP')],
    );

    final widget = MediaQuery(
      data: MediaQueryData(
        size: size,
        textScaler: TextScaler.linear(textScaleFactor),
      ),
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: FontFamily.notoSansJP,
          colorScheme: lightColorScheme,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          fontFamily: FontFamily.notoSansJP,
          colorScheme: darkColorScheme,
        ),
        home: Builder(
          builder: builder,
        ),
      ),
    );

    await runAsync(
      () async {
        await pumpWidget(widget);

        final elements = find.byType(Image, skipOffstage: false).evaluate();

        for (final element in elements) {
          final image = (element.widget as Image).image;
          await precacheImage(image, element);
          await pumpAndSettle();
        }
      },
    );
  }
}
