// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars

part of 'event_details_page_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $eventDetailsPageRoute,
    ];

RouteBase get $eventDetailsPageRoute => GoRouteData.$route(
      path: '/event-details',
      factory: $EventDetailsPageRouteExtension._fromState,
    );

extension $EventDetailsPageRouteExtension on EventDetailsPageRoute {
  static EventDetailsPageRoute _fromState(GoRouterState state) =>
      EventDetailsPageRoute(
        _$MeasurementTypeEnumMap._$fromName(state.uri.queryParameters['type']!),
      );

  String get location => GoRouteData.$location(
        '/event-details',
        queryParams: {
          'type': _$MeasurementTypeEnumMap[type],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$MeasurementTypeEnumMap = {
  MeasurementType.unknown: 'unknown',
  MeasurementType.wifi: 'wifi',
  MeasurementType.ibeacon: 'ibeacon',
  MeasurementType.magnetic: 'magnetic',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
