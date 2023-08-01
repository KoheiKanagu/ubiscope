import 'package:client_app/features/configure/application/package_info_providers.dart';
import 'package:client_app/gen/assets.gen.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
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
            title: const Text('Account'),
            trailing: Icon(
              Icons.adaptive.arrow_forward,
            ),
            onTap: () {
              const ProfilePageRoute().push<void>(context);
            },
          ),
          const Divider(),
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
                'https://github.com/KoheiKanagu/ubiscope/issues/new/choose',
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
              launchUrlString(
                'https://github.com/KoheiKanagu/ubiscope/assets/privacy_policy.md',
              );
            },
          ),
          ListTile(
            title: const Text('Terms of Service'),
            trailing: const Icon(
              Icons.open_in_new,
            ),
            onTap: () {
              launchUrlString(
                'https://github.com/KoheiKanagu/ubiscope/assets/terms_of_service.md',
              );
            },
          ),
          ListTile(
            title: const Text('Licenses'),
            onTap: () {
              showLicensePage(
                context: context,
                applicationName: '𝕌𝕓𝕚𝕤𝕔𝕠𝕡𝕖',
                applicationVersion: ref.watch(packageInfoVersionProvider),
                applicationLegalese: '©️ 2023 kingu.dev',
                applicationIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Assets.images.icon.image(
                    width: 114,
                  ),
                ),
              );
            },
            trailing: Icon(
              Icons.adaptive.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }
}
