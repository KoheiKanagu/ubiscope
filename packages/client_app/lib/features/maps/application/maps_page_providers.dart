import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mapsBottomSheetScrollableControllerProvider =
    ChangeNotifierProvider.autoDispose(
  (ref) => DraggableScrollableController(),
  name: 'mapsBottomSheetScrollableControllerProvider',
);
