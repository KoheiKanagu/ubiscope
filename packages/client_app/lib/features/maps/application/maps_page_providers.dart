import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maps_page_providers.g.dart';

@riverpod
Raw<DraggableScrollableController> mapsBottomSheetScrollableController(
  MapsBottomSheetScrollableControllerRef ref,
) =>
    DraggableScrollableController();

@riverpod
class MapsBottomSheetSize extends _$MapsBottomSheetSize {
  static const double minimumSheetSize = 0.2;

  @override
  double build() {
    final controller = ref.watch(mapsBottomSheetScrollableControllerProvider);
    controller.addListener(
      () {
        state = controller.size;
      },
    );
    return minimumSheetSize;
  }
}
