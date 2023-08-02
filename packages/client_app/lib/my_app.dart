import 'package:client_app/gen/color_schemes.g.dart';
import 'package:client_app/gen/fonts.gen.dart';
import 'package:client_app/routing/my_go_router.dart';
import 'package:core/core.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
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
      routerConfig: ref.watch(myGoRouterProvider),
    );
  }
}
