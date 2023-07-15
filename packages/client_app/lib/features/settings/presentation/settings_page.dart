import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:client_app/features/configure/application/package_info_providers.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('App Version'),
            subtitle: Text(
              ref.watch(packageInfoVersionProvider),
            ),
          ),
          ListTile(
            title: const Text('Bug Report and Feature Request'),
            onTap: () {
              launchUrlString(
                // TODO(kingu): #62
                'https://example.com',
              );
            },
            trailing: Icon(
              Icons.adaptive.arrow_forward,
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(
              Icons.open_in_new,
            ),
            onTap: () {
              // TODO(kingu): #62
              launchUrlString('https://example.com');
            },
          ),
          ListTile(
            title: const Text('Terms of Service'),
            trailing: const Icon(
              Icons.open_in_new,
            ),
            onTap: () {
              // TODO(kingu): #62
              launchUrlString('https://example.com');
            },
          ),
          ListTile(
            title: const Text('Licenses'),
            onTap: () {
              showLicensePage(
                context: context,
                applicationName: ref.watch(packageInfoAppNameProvider),
                applicationVersion: ref.watch(packageInfoVersionProvider),
                applicationLegalese: '©️ 2023 kingu.dev',
                // TODO(kingu): #59
                applicationIcon: const FlutterLogo(),
              );
            },
            trailing: Icon(
              Icons.adaptive.arrow_forward,
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Delete Account',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onTap: () async {
              final result = await showOkCancelAlertDialog(
                context: context,
                title: 'Delete Account',
                message: 'Are you sure you want to delete your account?\n'
                    'This action cannot be undone.',
                okLabel: 'Delete',
                cancelLabel: 'Cancel',
                isDestructiveAction: true,
              );

              if (result == OkCancelResult.cancel) {
                return;
              }

              showMyProgressIndicator(rootContext!);

              // TODO(kingu): #60
              await Future<void>.delayed(const Duration(seconds: 2));
              GoRouter.of(rootContext!).pop();
            },
          ),
        ],
      ),
    );
  }
}
