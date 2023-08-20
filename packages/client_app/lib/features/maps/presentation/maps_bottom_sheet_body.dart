import 'package:animations/animations.dart';
import 'package:client_app/features/maps/presentation/maps_bottom_sheet_measurement_point_detail.dart';
import 'package:client_app/features/maps/presentation/maps_bottom_sheet_ubiquitous_information.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsBottomSheetBody extends HookConsumerWidget {
  const MapsBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPointId = ref.watch(mapsSelectedMeasurementPointIdProvider);

    final child = selectedPointId == null
        ? const MapsBottomSheetUbiquitousInformation()
        : MapsBottomSheetMeasurementPointDetail(
            selectedPointId,
            key: ValueKey(selectedPointId),
          );

    return PageTransitionSwitcher(
      transitionBuilder: (
        child,
        primaryAnimation,
        secondaryAnimation,
      ) =>
          FadeThroughTransition(
        animation: primaryAnimation,
        secondaryAnimation: secondaryAnimation,
        fillColor: Colors.transparent,
        child: child,
      ),
      layoutBuilder: (entries) => Stack(
        alignment: Alignment.topCenter,
        children: entries,
      ),
      child: child,
    );
  }
}
