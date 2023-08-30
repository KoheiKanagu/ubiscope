import 'package:client_app/features/ads/application/ad_providers.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyBannerAd extends HookConsumerWidget {
  const MyBannerAd({
    super.key,
  });

  static const kFeatureAdBanner = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: MyOutlinedWidget(
          child: ref
              .watch(
                bannerAdControllerProvider(
                  MediaQuery.orientationOf(context),
                  MediaQuery.sizeOf(context).width.truncate(),
                ),
              )
              .maybeWhen(
                orElse: SizedBox.shrink,
                data: (ad) => AdWidget(
                  ad: ad,
                ),
              ),
        ),
      ),
    );
  }
}
