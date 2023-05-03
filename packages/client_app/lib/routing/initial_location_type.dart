import 'package:client_app/features/home/application/home_page_route.dart';

enum InitialLocationType {
  signOut,
  signIn,
  ;

  String get location {
    switch (this) {
      case InitialLocationType.signOut:
        return const HomePageRoute().location;

      case InitialLocationType.signIn:
        return const HomePageRoute().location;
    }
  }

  static InitialLocationType build({
    required bool isSignedIn,
  }) {
    return isSignedIn
        ? InitialLocationType.signIn
        : InitialLocationType.signOut;
  }
}
