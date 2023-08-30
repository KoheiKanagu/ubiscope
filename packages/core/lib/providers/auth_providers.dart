import 'package:core/providers/firebase_providers.dart';
import 'package:firebase_auth/firebase_auth.dart' hide OAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_ui_oauth/firebase_ui_oauth.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

List<OAuthProvider> get firebaseUIAuthProviders => [
      AppleProvider(),
      GoogleProvider(
        clientId: 'ignore',
        iOSPreferPlist: true,
        scopes: [
          'email',
        ],
      ),
    ];

void setupFirebaseUIAuth(FirebaseApp app) {
  FirebaseUIAuth.configureProviders(
    firebaseUIAuthProviders,
    app: app,
  );
}

@riverpod
String? firebaseUserUid(
  FirebaseUserUidRef ref,
) =>
    ref.watch(firebaseUserControllerProvider).asData?.value?.uid;

@riverpod
class FirebaseUserController extends _$FirebaseUserController {
  @override
  Stream<User?> build() {
    return ref.watch(firebaseAuthProvider).userChanges();
  }

  Future<void> signOut() async {
    await ref.read(firebaseAuthProvider).signOut();
    await ref.read(firebaseAnalyticsProvider).setUserId();
    await ref.read(firebaseCrashlyticsProvider).setUserIdentifier('');
    return;
  }

  Future<void> deleteAll() async {
    await ref
        .read(firebaseFunctionsProvider)
        .httpsCallable('deleteUser')
        .call<void>();

    await signOut();
  }
}
