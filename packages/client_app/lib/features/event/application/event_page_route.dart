import 'package:client_app/features/event/presentation/event_settings_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'event_page_route.g.dart';

@TypedGoRoute<EventSettingsPageRoute>(
  path: EventSettingsPageRoute.path,
)
class EventSettingsPageRoute extends GoRouteData {
  const EventSettingsPageRoute();

  static const path = '/event-settings';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: EventSettingsPage(),
      fullscreenDialog: true,
    );
  }
}
