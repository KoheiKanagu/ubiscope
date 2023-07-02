import 'package:client_app/features/home/presentation/my_home_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'home_page_route.g.dart';

@TypedGoRoute<HomePageRoute>(
  path: HomePageRoute.path,
)
class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MyHomePage();
  }
}
