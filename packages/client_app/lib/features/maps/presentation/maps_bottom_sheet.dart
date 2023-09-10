import 'package:client_app/features/maps/application/maps_page_providers.dart';
import 'package:client_app/features/maps/presentation/maps_bottom_sheet_body.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsBottomSheet extends HookConsumerWidget {
  const MapsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DraggableScrollableSheet(
      controller: ref.watch(mapsBottomSheetScrollableControllerProvider),
      initialChildSize: MapsBottomSheetSize.minimumSheetSize,
      maxChildSize: MapsBottomSheetSize.minimumSheetSize * 3,
      minChildSize: MapsBottomSheetSize.minimumSheetSize,
      snap: true,
      snapSizes: const [
        MapsBottomSheetSize.minimumSheetSize,
        MapsBottomSheetSize.minimumSheetSize * 2,
        MapsBottomSheetSize.minimumSheetSize * 3,
      ],
      builder: (context, controller) {
        return MyGlassContainer(
          child: CustomScrollView(
            controller: controller,
            slivers: [
              SliverPersistentHeader(
                delegate: MapsBottomSheetHeaderDelegate(),
                pinned: true,
              ),
              const SliverToBoxAdapter(
                child: MapsBottomSheetBody(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class MapsBottomSheetHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Center(
      child: Container(
        height: 4,
        width: 32,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 0.5,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 32;

  @override
  double get minExtent => 32;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
