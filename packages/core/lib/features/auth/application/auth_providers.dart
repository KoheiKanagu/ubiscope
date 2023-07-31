import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';

void setupFirebaseUIAuth() {
  FirebaseUIAuth.configureProviders(
    [
      GoogleProvider(
        clientId: 'ignore',
        iOSPreferPlist: true,
      ),
      AppleProvider(),
    ],
  );
}
