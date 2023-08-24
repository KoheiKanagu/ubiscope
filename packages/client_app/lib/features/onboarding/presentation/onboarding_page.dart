// ignore_for_file: lines_longer_than_80_chars

import 'package:core/core.dart';
import 'package:core/features/auth/presentation/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OnboardingPage extends HookConsumerWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                title: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '𝕌𝕓𝕚𝕤𝕔𝕠𝕡𝕖',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                ),
                expandedTitleScale: 2,
              ),
              pinned: true,
              expandedHeight: 128,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: DefaultTextStyle(
                  style: Theme.of(context).textTheme.bodyLarge!,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Hi there! 👋',
                      ),
                      const Gap(18),
                      const Text(
                        'Our app is designed to collect information about the surrounding environment, also known as ubiquitous information.',
                      ),
                      const Text(
                        "But don't worry, we won't disclose or sell the collected information to third parties without your permission. 🤝",
                      ),
                      const Divider(),
                      const Text(
                        'Our app is open-source and available on GitHub. Feel free to post bug reports, feature requests, and contributions on our issue tracker.',
                      ),
                      TextButton(
                        onPressed: () {
                          launchUrlString(
                            MyLinks.issues,
                          );
                        },
                        child: const Text('GitHub Issues 🐛'),
                      ),
                      const Divider(),
                      const Text(
                        'You can view our terms of service and privacy policy here: ',
                      ),
                      Wrap(
                        children: [
                          TextButton(
                            onPressed: () {
                              launchUrlString(
                                MyLinks.termOfService,
                              );
                            },
                            child: const Text('Term Of Service'),
                          ),
                          TextButton(
                            onPressed: () {
                              launchUrlString(
                                MyLinks.privacyPolicy,
                              );
                            },
                            child: const Text('Privacy Policy'),
                          ),
                        ],
                      ),
                      const Divider(),
                      const Text(
                        'Now, let\'s create an account and get started! 🎉',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SliverFillRemaining(
              child: MediaQuery(
                data: MediaQueryData(),
                child: SignInPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
