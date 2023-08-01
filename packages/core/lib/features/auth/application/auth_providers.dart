import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_ui_oauth/firebase_ui_oauth.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';

List<OAuthProvider> get firebaseUIAuthProviders => [
      GoogleProvider(
        clientId: 'ignore',
        iOSPreferPlist: true,
        scopes: [
          'email',
        ],
      ),
      AppleProvider(
        scopes: {
          'email',
        },
      ),
    ];

void setupFirebaseUIAuth(FirebaseApp app) {
  FirebaseUIAuth.configureProviders(
    firebaseUIAuthProviders,
    app: app,
  );
}
