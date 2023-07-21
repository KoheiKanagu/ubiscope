import 'package:client_app/features/settings/presentation/settings_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'settings_page_route.g.dart';

@TypedGoRoute<SettingsPageRoute>(
  path: SettingsPageRoute.path,
)
class SettingsPageRoute extends GoRouteData {
  const SettingsPageRoute();

  static const path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPage();
  }
}
