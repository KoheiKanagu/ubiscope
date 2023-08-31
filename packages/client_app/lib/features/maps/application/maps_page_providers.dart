import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maps_page_providers.g.dart';

@riverpod
Raw<DraggableScrollableController> mapsBottomSheetScrollableController(
  MapsBottomSheetScrollableControllerRef ref,
) =>
    DraggableScrollableController();
