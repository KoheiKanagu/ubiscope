// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'maps_page_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mapsPageRoute,
    ];

RouteBase get $mapsPageRoute => GoRouteData.$route(
      path: '/maps',
      factory: $MapsPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'event-settings',
          factory: $MapsEventSettingsPageRouteExtension._fromState,
        ),
      ],
    );

extension $MapsPageRouteExtension on MapsPageRoute {
  static MapsPageRoute _fromState(GoRouterState state) => const MapsPageRoute();

  String get location => GoRouteData.$location(
        '/maps',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MapsEventSettingsPageRouteExtension on MapsEventSettingsPageRoute {
  static MapsEventSettingsPageRoute _fromState(GoRouterState state) =>
      const MapsEventSettingsPageRoute();

  String get location => GoRouteData.$location(
        '/maps/event-settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
