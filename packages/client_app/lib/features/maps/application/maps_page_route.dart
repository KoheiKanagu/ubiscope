import 'package:client_app/features/maps/presentation/maps_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'maps_page_route.g.dart';

@TypedGoRoute<MapsPageRoute>(
  path: MapsPageRoute.path,
)
class MapsPageRoute extends GoRouteData {
  const MapsPageRoute();

  static const path = '/maps';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MapsPage();
  }
}
