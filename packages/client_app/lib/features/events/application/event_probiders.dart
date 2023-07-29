import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

mixin EventControllerBase<T> {
  Future<PermissionStatus> checkPermission();

  Future<PermissionStatus> requestPermission();

  Future<bool> start([T? arg]);

  @mustCallSuper
  Future<void> stop() async {
    dummyEventTimer?.cancel();
  }

  @protected
  Timer? dummyEventTimer;

  @protected
  bool startSimulation<R>(
    void Function(R result) onEvent, {
    required R Function() dummyEventBuilder,
  }) {
    dummyEventTimer = Timer.periodic(
      const Duration(seconds: 2),
      (_) => onEvent(dummyEventBuilder()),
    );

    return true;
  }
}
