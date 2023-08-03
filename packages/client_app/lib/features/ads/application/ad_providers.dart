import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ad_providers.g.dart';

@riverpod
class BannerAdController extends _$BannerAdController {
  @override
  Future<BannerAd> build(
    Orientation orientation,
    int width,
  ) async {
    final String adUnitId;

    if (Platform.isIOS) {
      adUnitId = kReleaseMode && AppEnv.current.isProd
          ? 'ca-app-pub-3095994149570460/8207890674'
          : 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      adUnitId = kReleaseMode && AppEnv.current.isProd
          ? 'ca-app-pub-3095994149570460/3304979986'
          : 'ca-app-pub-3940256099942544/6300978111';
    } else {
      adUnitId = '';
    }

    final size = await AdSize.getAnchoredAdaptiveBannerAdSize(
      orientation,
      width,
    );
    if (size == null) {
      throw Exception('size is null');
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
    await bannerAd.load();

    ref.onDispose(() {
      state.asData?.value.dispose();
    });

    return bannerAd;
  }
}
