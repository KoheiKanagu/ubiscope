import 'package:client_app/features/ads/application/ad_providers.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyBannerAd extends HookConsumerWidget {
  const MyBannerAd({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) => ref
          .watch(
            bannerAdControllerProvider(
              MediaQuery.orientationOf(context),
              constraints.maxWidth.truncate(),
            ),
          )
          .maybeWhen(
            orElse: SizedBox.shrink,
            data: (ad) => AdWidget(ad: ad),
          ),
    );
  }
}
