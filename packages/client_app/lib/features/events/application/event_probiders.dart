import 'package:permission_handler/permission_handler.dart';

mixin EventControllerBase {
  Future<PermissionStatus> checkPermission();

  Future<PermissionStatus> requestPermission();

  Future<void> stop();
}
