import 'package:client_app/features/maps/application/maps_page_route.dart';
import 'package:client_app/features/onboarding/application/onboarding_page_route.dart';

enum InitialLocationType {
  signOut,
  signIn,
  ;

  String get location {
    switch (this) {
      case InitialLocationType.signOut:
        return const OnboardingPageRoute().location;

      case InitialLocationType.signIn:
        return const MapsPageRoute().location;
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
