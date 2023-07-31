import 'package:animations/animations.dart';
import 'package:client_app/features/settings/presentation/settings_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsPageFloatingActionButton extends HookConsumerWidget {
  const MapsPageFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Gap(kToolbarHeight + 8),
        MyOutlineWidget(
          shape: const CircleBorder(),
          child: OpenContainer(
            closedShape: const CircleBorder(),
            closedElevation: 0,
            closedBuilder: (_, openContainer) => IconButton.filledTonal(
              onPressed: () => openContainer(),
              icon: const Icon(
                Icons.settings,
                size: 32,
              ),
            ),
            openBuilder: (_, __) => const SettingsPage(),
          ),
        ),
      ],
    );
  }
}