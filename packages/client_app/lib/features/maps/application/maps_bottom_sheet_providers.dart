import 'package:client_app/features/maps/presentation/maps_bottom_sheet.dart';
import 'package:client_app/features/maps/presentation/maps_page_body.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maps_bottom_sheet_providers.g.dart';

@riverpod
MapsBottomSheetController mapsBottomSheetController(
  MapsBottomSheetControllerRef ref,
  MapsBottomSheetType type,
) =>
    MapsBottomSheetController();

class MapsBottomSheetController {
  MapsBottomSheetController() {
    controller = DraggableScrollableController()
      ..addListener(
        () {
          // closeしない限り手動で閉じさせない
          if (controller.size < MapsPageBody.sheetSize && _isOpen) {
            controller.jumpTo(
              MapsPageBody.sheetSize,
            );
          }
        },
      );
  }

  late final DraggableScrollableController controller;

  bool _isOpen = false;

  Future<void> open() async {
    if (controller.isAttached) {
      _isOpen = true;
      return controller.animateTo(
        1,
        duration: const Duration(milliseconds: 240),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> close() async {
    if (controller.isAttached) {
      _isOpen = false;
      return controller.animateTo(
        0,
        duration: const Duration(milliseconds: 240),
        curve: Curves.easeInOut,
      );
    }
  }
}
