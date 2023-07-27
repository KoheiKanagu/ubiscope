import 'package:client_app/features/events/application/event_probiders.dart';
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
    with EventControllerBase
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
  Future<void> stop() {
    return ref.read(_wiFiHostApiProvider).stopScan();
  }

  Future<bool> isScanThrottleEnabled() {
    return ref.read(_wiFiHostApiProvider).isScanThrottleEnabled();
  }

  @override
  void onEvent(List<WiFi?> results) {
    state = results.whereType<WiFi>().toList();
  }

  Future<bool> start() {
    return ref.read(_wiFiHostApiProvider).startScan();
  }
}
