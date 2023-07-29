import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:client_app/features/events/application/event_probiders.dart';
import 'package:client_app/gen/message.g.dart';
import 'package:core/core.dart';
import 'package:core/providers/device_info/device_info_providers.dart';
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

  @override
  Future<PermissionStatus> checkPermission() {
    return Permission.bluetooth.status;
  }

  @override
  Future<PermissionStatus> requestPermission() {
    return Permission.bluetooth.request();
  }

  @override
  Future<bool> start([
    ({
      String? uuid,
      int? major,
      int? minor,
    })? arg,
  ]) async {
    if (arg == null) {
      throw ArgumentError('arg is required.');
    }

    if (Platform.isIOS && arg.uuid == null) {
      throw ArgumentError('uuid is required on iOS.');
    }

    if (ref.read(deviceInfoIsPhysicalDeviceProvider)) {
      logger.w('Start Beacon scan simulation.');

      return startSimulation<List<Beacon?>>(
        onEvent,
        dummyEventBuilder: () {
          final rand = Random();
          return List.generate(
            rand.nextInt(24),
            (index) => Beacon(
              uuid: arg.uuid ?? 'XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX',
              major: rand.nextInt(8),
              minor: rand.nextInt(8),
              rssi: (rand.nextInt(42) + 48) * -1, // -42 ~ -90
              timestamp: DateTime.now().toIso8601String(),
              accuracy: rand.nextDouble() * 3,
              type: BeaconType.iBeacon,
            ),
          );
        },
      );
    }

    return ref.read(_beaconHostApiProvider).startScan(
          arg.uuid,
          arg.major,
          arg.minor,
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
  }
}

typedef BeaconEventStartArg = ({
  String? uuid,
  int? major,
  int? minor,
});
