// ignore_for_file: avoid_returning_this

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MediaQueryPreview {
  MediaQueryPreview(
    this.context,
    this.child,
  );

  final BuildContext context;

  final Widget? child;

  EdgeInsets? _padding;

  double? _textScaleFactor;

  TargetPlatform? _targetPlatform;

  MediaQueryPreview disableDynamicIsland() {
    _padding = MediaQuery.paddingOf(context);
    return this;
  }

  MediaQueryPreview textScale05() {
    _textScaleFactor = 0.5;
    return this;
  }

  MediaQueryPreview textScale10() {
    _textScaleFactor = 1;
    return this;
  }

  MediaQueryPreview textScale15() {
    _textScaleFactor = 1.5;
    return this;
  }

  MediaQueryPreview textScale20() {
    _textScaleFactor = 2;
    return this;
  }

  MediaQueryPreview android() {
    _targetPlatform = TargetPlatform.android;
    return this;
  }

  MediaQueryPreview ios() {
    _targetPlatform = TargetPlatform.iOS;
    return this;
  }

  Widget build() {
    if (kReleaseMode) {
      return child!;
    }

    return Padding(
      padding: _padding ?? EdgeInsets.zero,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.linear(
            _textScaleFactor ?? 1,
          ),
          padding: _padding == null ? null : EdgeInsets.zero,
          viewPadding: _padding == null ? null : EdgeInsets.zero,
          platformBrightness: debugBrightnessOverride,
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            platform: _targetPlatform ?? Theme.of(context).platform,
            brightness: debugBrightnessOverride,
          ),
          child: child!,
        ),
      ),
    );
  }
}
