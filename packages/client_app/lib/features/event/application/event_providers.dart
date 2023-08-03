import 'dart:async';

import 'package:client_app/features/event/application/beacon_providers.dart';
import 'package:client_app/features/event/application/wifi_providers.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'event_providers.g.dart';

mixin EventControllerBase<T> {
  @protected
  bool capture = false;

  @protected
  ({
    String measurementPointId,
    String datasetId,
  })? captureArgs;

  void startCapture({
    required String measurementPointId,
  }) {
    capture = true;
    captureArgs = (
      measurementPointId: measurementPointId,
      datasetId: const Uuid().v4(),
    );
  }

  void stopCapture() {
    capture = false;
    captureArgs = null;
  }

  @protected
  bool didStart = false;

  @protected
  Future<U> startGuard<U>(Future<U> Function() start) {
    didStart = true;

    try {
      return start();
    } on Exception catch (error, stackTrace) {
      logger.e(error, stackTrace);
      didStart = false;
      return Future.error(error, stackTrace);
    }
  }

  @mustCallSuper
  Future<void> stop() async {
    dummyEventTimer?.cancel();
    didStart = false;
    capture = false;
  }

  @protected
  Timer? dummyEventTimer;

  @protected
  Future<bool> startSimulation<R>(
    void Function(R result) onEvent, {
    required R Function() dummyEventBuilder,
  }) async {
    if (dummyEventTimer != null) {
      return true;
    }

    dummyEventTimer = Timer.periodic(
      const Duration(seconds: 2),
      (_) => onEvent(dummyEventBuilder()),
    );

    return true;
  }
}

@riverpod
class EventPermissionStatus extends _$EventPermissionStatus {
  @override
  bool build() {
    return [
      ref.watch(wiFiScanPermissionControllerProvider),
      ref.watch(beaconScanPermissionControllerProvider),
    ].every((element) => element == PermissionStatus.granted);
  }
}

@riverpod
EventController eventController(
  EventControllerRef ref,
) =>
    EventController(ref);

class EventController {
  EventController(this.ref);

  final EventControllerRef ref;

  void startCaptures({
    required String measurementPointId,
  }) {
    ref.read(beaconScanControllerProvider.notifier).startCapture(
          measurementPointId: measurementPointId,
        );
    ref.read(wiFiScanControllerProvider.notifier).startCapture(
          measurementPointId: measurementPointId,
        );
  }

  void stopCaptures() {
    ref.read(beaconScanControllerProvider.notifier).stopCapture();
    ref.read(wiFiScanControllerProvider.notifier).stopCapture();
  }
}
