import 'package:core/core.dart';
import 'package:flutter/material.dart';

class MapsBottomSheet extends StatelessWidget {
  const MapsBottomSheet(
    this.controller, {
    super.key,
    this.onClose,
    required this.child,
  });

  final ScrollController? controller;

  final Widget child;

  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return MyGlassContainer(
      child: CustomScrollView(
        controller: controller,
        slivers: [
          MediaQuery(
            data: MediaQuery.of(context).copyWith(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
            ),
            child: SliverAppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              title: Container(
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
              toolbarHeight: 40,
              pinned: true,
              centerTitle: true,
              actions: [
                if (onClose != null)
                  MyCloseIconButton(
                    onPressed: onClose,
                  ),
              ],
              backgroundColor: Colors.transparent,
              scrolledUnderElevation: 0,
            ),
          ),
          SliverToBoxAdapter(
            child: child,
          ),
        ],
      ),
    );
  }
}

enum MapsBottomSheetType {
  ubiquitousInformation,
  measurementPointDetail,
  ;
}
