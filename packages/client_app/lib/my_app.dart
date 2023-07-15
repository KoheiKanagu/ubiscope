import 'package:client_app/gen/fonts.gen.dart';
import 'package:client_app/routing/initial_location_type.dart';
import 'package:client_app/routing/my_go_router.dart';
import 'package:core/core.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({
    super.key,
    required this.initialLocationType,
  });

  final InitialLocationType initialLocationType;

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF01ADB9),
        ),
      ),
      routerConfig: ref.watch(myGoRouterProvider(initialLocationType)),
    );
  }
}
