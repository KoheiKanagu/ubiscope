import 'dart:math';

import 'package:client_app/features/events/application/event_probiders.dart';
import 'package:client_app/gen/message.g.dart';
import 'package:core/core.dart';
import 'package:core/providers/device_info/device_info_providers.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wifi_providers.g.dart';

@Riverpod(
  keepAlive: true,
)
WiFiHostApi _wiFiHostApi(
  _WiFiHostApiRef ref,
) =>
    WiFiHostApi();

@Riverpod(
  keepAlive: true,
)
class WiFiScanController extends _$WiFiScanController
    with EventControllerBase<void>
    implements WiFiFlutterApi {
  @override
  List<WiFi> build() {
    WiFiFlutterApi.setup(this);
    return [];
  }

  @override
  Future<PermissionStatus> checkPermission() {
    return Permission.location.status;
  }

  @override
  Future<PermissionStatus> requestPermission() {
    return Permission.location.request();
  }

  @override
  Future<bool> start([
    void arg,
  ]) async {
    if (!ref.read(deviceInfoIsPhysicalDeviceProvider)) {
      logger.w('Start WiFi scan simulation.');

      return startSimulation<List<WiFi?>>(
        onEvent,
        dummyEventBuilder: () {
          final rand = Random();

          return List.generate(
            rand.nextInt(24),
            (index) => WiFi(
              timestamp: DateTime.now().toIso8601String(),
              ssid: 'My WiFi ${rand.nextInt(1024)}',
              bssid: '00:11:22:33:44:'
                  '${rand.nextInt(16).toRadixString(16)}'
                  '${rand.nextInt(16).toRadixString(16)}',
              rssi: (rand.nextInt(42) + 48) * -1, // -42 ~ -90
              frequency: 5640,
              capabilities: '[WPA2-PSK-CCMP][RSN-PSK+SAE-CCMP][ESS][WPS]',
              centerFreq0: 5610,
              centerFreq1: 0,
              channelWidth: 2,
            ),
          );
        },
      );
    }

    return ref.read(_wiFiHostApiProvider).startScan();
  }

  @override
  Future<void> stop() {
    super.stop();

    return ref.read(_wiFiHostApiProvider).stopScan();
  }

  Future<bool> isScanThrottleEnabled() {
    return ref.read(_wiFiHostApiProvider).isScanThrottleEnabled();
  }

  @override
  void onEvent(List<WiFi?> results) {
    state = results.whereType<WiFi>().toList();
  }
}
