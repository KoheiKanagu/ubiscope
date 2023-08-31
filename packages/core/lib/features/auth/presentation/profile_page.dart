import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:core/core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
// ignore: implementation_imports
import 'package:firebase_ui_auth/src/oauth/provider_resolvers.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({
    super.key,
  });

  Widget googleButton(
    AuthAction action,
  ) =>
      OAuthProviderButton(
        provider: firebaseUIAuthProviders.whereType<GoogleProvider>().single,
        variant: OAuthButtonVariant.icon,
        action: action,
      );

  Widget appleButton(
    AuthAction action,
  ) =>
      OAuthProviderButton(
        provider: firebaseUIAuthProviders.whereType<AppleProvider>().single,
        variant: OAuthButtonVariant.icon,
        action: action,
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebaseUser = ref.watch(firebaseAuthProvider).currentUser;

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: const Text('User Id'),
            subtitle: Text(firebaseUser?.uid ?? 'Not signed in'),
            trailing: const Icon(
              Icons.copy,
            ),
            onTap: () async {
              final data =
                  ClipboardData(text: firebaseUser?.uid ?? 'undefined');
              await Clipboard.setData(data);

              if (context.mounted) {
                await showOkAlertDialog(
                  context: context,
                  title: 'Copied to clipboard',
                );
              }
            },
          ),
          const Divider(),
          const ListTile(
            title: Text('Sign-in methods'),
            subtitle: Text(
              'These are the methods you are currently signed in with.',
            ),
          ),
          ListTile(
            title: AbsorbPointer(
              child: Wrap(
                children: firebaseUser?.providerData
                        .map(
                          (e) => switch (e.providerId) {
                            == GOOGLE_PROVIDER_ID => googleButton(
                                AuthAction.none,
                              ),
                            == APPLE_PROVIDER_ID => appleButton(
                                AuthAction.none,
                              ),
                            _ => const SizedBox.shrink(),
                          },
                        )
                        .toList() ??
                    [],
              ),
            ),
          ),
          const Divider(),
          const ListTile(
            title: Text('Enable more sign-in mothods'),
            subtitle: Text(
              'You can link them by signing in with them.',
            ),
          ),
          ListTile(
            title: Wrap(
              children: firebaseUIAuthProviders
                  .where(
                    (e) => !(firebaseUser?.providerData
                            .map((e) => e.providerId)
                            .contains(e.providerId) ??
                        false),
                  )
                  .map(
                    (e) => OAuthProviderButton(
                      provider: e,
                      variant: OAuthButtonVariant.icon,
                      action: AuthAction.link,
                    ),
                  )
                  .toList(),
            ),
          ),
          const Divider(),
          TextButton.icon(
            onPressed: () async {
              final result = await showOkCancelAlertDialog(
                context: context,
                title: 'Sign out',
                message: 'Are you sure you want to sign out?',
                okLabel: 'Sign out',
                isDestructiveAction: true,
              );

              if (result == OkCancelResult.cancel) {
                return;
              }

              await ref.read(firebaseUserControllerProvider.notifier).signOut();
            },
            icon: const Icon(Icons.logout),
            label: const Text('Sign out'),
          ),
          TextButton.icon(
            icon: Icon(
              Icons.delete,
              color: Theme.of(context).colorScheme.error,
            ),
            label: Text(
              'Delete Account',
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
            onPressed: () async {
              final result = await showOkCancelAlertDialog(
                context: context,
                title: 'Delete Account',
                message: 'Are you sure you want to delete your account?\n'
                    'This action cannot be undone.',
                okLabel: 'Delete',
                isDestructiveAction: true,
              );

              if (result == OkCancelResult.cancel) {
                return;
              }

              showMyProgressIndicator(rootContext()!);

              await ref
                  .read(firebaseUserControllerProvider.notifier)
                  .deleteAll();
            },
          ),
        ],
      ),
    );
  }
}
