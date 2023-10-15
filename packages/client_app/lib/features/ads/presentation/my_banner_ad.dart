import 'package:client_app/features/ads/application/ad_providers.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyBannerAd extends HookConsumerWidget {
  const MyBannerAd({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adUnitId = ref.watch(bannerAdUnitIdProvider);
    final size = ref
        .watch(
          bannerAdSizeProvider(
            MediaQuery.orientationOf(context),
            MediaQuery.sizeOf(context).width.truncate(),
          ),
        )
        .asData
        ?.value;

    if (size == null) {
      return const SizedBox.shrink();
    }

    final bannerAd = BannerAd(
      size: size,
      adUnitId: adUnitId,
      listener: BannerAdListener(
        onAdFailedToLoad: (ad, error) {
          logger.w('onAdFailedToLoad: $ad, $error');
          ad.dispose();
        },
      ),
      request: const AdRequest(),
    );

    useEffect(
      () {
        bannerAd.load();
        return bannerAd.dispose;
      },
      [bannerAd],
    );

    return SafeArea(
      child: SizedBox(
        height: size.height.toDouble(),
        child: MyOutlinedWidget(
          child: AdWidget(
            ad: bannerAd,
          ),
        ),
      ),
    );
  }
}
