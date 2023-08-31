import 'package:client_app/features/event/presentation/event_settings_page.dart';
import 'package:client_app/features/maps/presentation/maps_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'maps_page_route.g.dart';

@TypedGoRoute<MapsPageRoute>(
  path: MapsPageRoute.path,
  routes: [
    TypedGoRoute<MapsEventSettingsPageRoute>(
      path: MapsEventSettingsPageRoute.path,
    ),
  ],
)
class MapsPageRoute extends GoRouteData {
  const MapsPageRoute();

  static const path = '/maps';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MapsPage();
  }
}

class MapsEventSettingsPageRoute extends GoRouteData {
  const MapsEventSettingsPageRoute();

  static const path = 'event-settings';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: EventSettingsPage(),
      fullscreenDialog: true,
    );
  }
}
