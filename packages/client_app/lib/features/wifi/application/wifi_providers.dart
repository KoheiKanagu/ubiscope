import 'package:client_app/gen/message.g.dart';
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
    implements WiFiFlutterApi {
  @override
  List<WiFi> build() {
    WiFiFlutterApi.setup(this);
    return [];
  }

  Future<PermissionStatus> checkPermission() {
    return Permission.location.status;
  }

  Future<PermissionStatus> requestPermission() {
    return Permission.location.request();
  }

  Future<bool> isScanThrottleEnabled() {
    return ref.read(_wiFiHostApiProvider).isScanThrottleEnabled();
  }

  Future<bool> startScan() {
    return ref.read(_wiFiHostApiProvider).startScan();
  }

  Future<void> stopScan() {
    return ref.read(_wiFiHostApiProvider).stopScan();
  }

  @override
  void onReceiveWiFiList(List<WiFi?> results) {
    state = results.whereType<WiFi>().toList();
  }
}
