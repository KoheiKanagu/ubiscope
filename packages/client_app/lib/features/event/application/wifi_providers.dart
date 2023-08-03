import 'dart:async';
import 'dart:math';

import 'package:client_app/extensions/wifi_extension.dart';
import 'package:client_app/features/event/application/event_providers.dart';
import 'package:client_app/gen/message.g.dart';
import 'package:collection/collection.dart';
import 'package:core/core.dart';
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

@riverpod
class WiFiScanPermissionController extends _$WiFiScanPermissionController {
  @override
  PermissionStatus build() {
    final timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) async {
        /// for Simulator
        if (!ref.watch(deviceInfoIsPhysicalDeviceProvider)) {
          state = PermissionStatus.granted;
        } else {
          final result = await Permission.location.status;
          state = result;
        }

        await ref.read(wiFiScanControllerProvider.notifier).startScan();
      },
    );

    ref.onDispose(timer.cancel);

    return PermissionStatus.granted;
  }

  Future<PermissionStatus> requestPermission() {
    return Permission.location.request();
  }
}

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

  /// Start WiFi scan.
  ///
  /// Not supported on iOS.
  Future<bool> startScan() async {
    if (!ref.read(deviceInfoIsPhysicalDeviceProvider)) {
      return startGuard(
        () => startSimulation<List<WiFi?>>(
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
        ),
      );
    }

    return startGuard(
      () => ref.read(_wiFiHostApiProvider).startScan(),
    );
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

    if (capture && captureArgs != null) {
      ref.read(measurementResultsControllerProvider).add(
            measurementPointId: captureArgs!.measurementPointId,
            datasetId: captureArgs!.datasetId,
            data: results.whereNotNull().map((e) => e.toResultData),
          );
    }
  }
}
