import 'package:client_app/features/events/application/event_probiders.dart';
import 'package:client_app/gen/message.g.dart';
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
    with EventControllerBase
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
  Future<void> stop() {
    return ref.read(_beaconHostApiProvider).stopScan();
  }

  @override
  void onEvent(List<Beacon?> results) {
    state = results.whereType<Beacon>().toList();
  }

  Future<bool> start({
    required String uuid,
    int? major,
    int? minor,
  }) {
    return ref.read(_beaconHostApiProvider).startScan(
          uuid,
          major,
          minor,
        );
  }
}
