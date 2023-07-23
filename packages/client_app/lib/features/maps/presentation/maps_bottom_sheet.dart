import 'package:client_app/gen/message.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsBottomSheet extends HookConsumerWidget {
  const MapsBottomSheet({
    super.key,
    required this.controller,
  });

  final ScrollController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      elevation: 24,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: ListView(
        controller: controller,
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Center(
              child: Container(
                height: 4,
                width: 32,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              WiFiHostApi().startScan();
            },
            child: const Text('startScan'),
          ),
        ],
      ),
    );
  }
}
