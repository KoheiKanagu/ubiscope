import 'package:client_app/features/event_details/presentation/event_details_beacon_page.dart';
import 'package:client_app/features/event_details/presentation/event_details_wifi_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'event_details_page_route.g.dart';

@TypedGoRoute<EventDetailsPageRoute>(
  path: EventDetailsPageRoute.path,
)
class EventDetailsPageRoute extends GoRouteData {
  const EventDetailsPageRoute(
    this.type,
  );

  static const path = '/event-details';

  final MeasurementType type;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: switch (type) {
        MeasurementType.wifi => const EventDetailsWifiPage(),
        MeasurementType.ibeacon => const EventDetailsBeaconPage(),
        _ => Container(),
      },
      fullscreenDialog: true,
    );
  }
}
