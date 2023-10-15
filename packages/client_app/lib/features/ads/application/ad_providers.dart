import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ad_providers.g.dart';

@riverpod
String bannerAdUnitId(
  BannerAdUnitIdRef ref,
) {
  if (Platform.isIOS) {
    return kReleaseMode && AppEnv.current.isProd
        ? 'ca-app-pub-3095994149570460/8207890674'
        : 'ca-app-pub-3940256099942544/2934735716';
  }

  if (Platform.isAndroid) {
    return kReleaseMode && AppEnv.current.isProd
        ? 'ca-app-pub-3095994149570460/3304979986'
        : 'ca-app-pub-3940256099942544/6300978111';
  }

  throw UnsupportedError('Unsupported platform');
}

@riverpod
Future<AnchoredAdaptiveBannerAdSize> bannerAdSize(
  BannerAdSizeRef ref,
  Orientation orientation,
  int width,
) async {
  final size =
      await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(width);

  if (size == null) {
    throw Exception('size is null');
  }

  return size;
}
