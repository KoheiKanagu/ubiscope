// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:client_app/extensions/beacon_extension.dart';
import 'package:client_app/features/event/application/event_providers.dart';
import 'package:client_app/gen/message.g.dart';
import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'beacon_providers.g.dart';

@Riverpod(
  keepAlive: true,
)
BeaconHostApi _beaconHostApi(
  _BeaconHostApiRef ref,
) =>
    BeaconHostApi();

@riverpod
class BeaconScanPermissionController extends _$BeaconScanPermissionController {
  @override
  PermissionStatus build() {
    final timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) async {
        /// for Simulator
        if (!ref.watch(deviceInfoIsPhysicalDeviceProvider)) {
          state = PermissionStatus.granted;
        } else {
          final result = await Permission.bluetooth.status;
          state = result;
        }

        final uuid = ref.read(sharedPreferencesBeaconScanUuidProvider);
        final major = ref.read(sharedPreferencesBeaconScanMajorProvider);
        final minor = ref.read(sharedPreferencesBeaconScanMinorProvider);

        if (Platform.isIOS) {
          if (uuid == null) {
            return;
          }
        }

        await ref.read(beaconScanControllerProvider.notifier).startScan(
              uuid,
              major,
              minor,
            );
      },
    );

    ref.onDispose(timer.cancel);

    return PermissionStatus.granted;
  }

  Future<PermissionStatus> requestPermission() {
    return Permission.bluetooth.request();
  }
}

@Riverpod(
  keepAlive: true,
)
@riverpod
class BeaconScanController extends _$BeaconScanController
    with EventControllerBase<BeaconEventStartArg>
    implements BeaconFlutterApi {
  @override
  List<Beacon> build() {
    BeaconFlutterApi.setup(this);
    return [];
  }

  /// Start Beacon scan.
  ///
  /// [uuid] is required on iOS.
  /// If [uuid] is not specified on Android, all beacons will be detected.
  /// If [major] and [minor] are not specified, all beacons with the specified [uuid] will be detected.
  Future<bool> startScan(
    String? uuid, [
    int? major,
    int? minor,
  ]) async {
    if (Platform.isIOS && uuid == null) {
      throw ArgumentError('uuid is required on iOS.');
    }

    if (!ref.read(deviceInfoIsPhysicalDeviceProvider)) {
      return startGuard(
        () => startSimulation<List<Beacon?>>(
          onEvent,
          dummyEventBuilder: () {
            final rand = Random();
            return List.generate(
              rand.nextInt(24),
              (index) => Beacon(
                uuid: uuid ?? 'XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX',
                major: rand.nextInt(8),
                minor: rand.nextInt(8),
                rssi: (rand.nextInt(42) + 48) * -1, // -42 ~ -90
                timestamp: DateTime.now().toIso8601String(),
                accuracy: rand.nextDouble() * 3,
                type: BeaconType.iBeacon,
              ),
            );
          },
        ),
      );
    }

    return startGuard(
      () => ref.read(_beaconHostApiProvider).startScan(
            uuid,
            major,
            minor,
          ),
    );
  }

  @override
  Future<void> stop() {
    super.stop();

    return ref.read(_beaconHostApiProvider).stopScan();
  }

  @override
  void onEvent(List<Beacon?> results) {
    state = results.whereType<Beacon>().toList();

    if (capture && captureArgs != null) {
      ref.read(measurementResultsControllerProvider).add(
            measurementPointId: captureArgs!.measurementPointId,
            datasetId: captureArgs!.datasetId,
            data: results.whereNotNull().map((e) => e.toResultData),
          );
    }
  }
}

typedef BeaconEventStartArg = ({
  String? uuid,
  int? major,
  int? minor,
});
