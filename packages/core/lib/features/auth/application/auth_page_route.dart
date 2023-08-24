import 'package:core/features/auth/presentation/profile_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'auth_page_route.g.dart';

@TypedGoRoute<ProfilePageRoute>(
  path: ProfilePageRoute.path,
)
class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute();

  static const path = '/profile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}
