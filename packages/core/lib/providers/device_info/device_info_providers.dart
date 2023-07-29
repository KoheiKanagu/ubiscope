import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'device_info_providers.g.dart';

@riverpod
DeviceInfoPlugin deviceInfoPlugin(
  DeviceInfoPluginRef ref,
) =>
    throw UnimplementedError();

@riverpod
bool deviceInfoIsPhysicalDevice(
  DeviceInfoIsPhysicalDeviceRef ref,
) {
  final plugin = ref.watch(deviceInfoPluginProvider);

  if (Platform.isIOS) {
    return (plugin as IosDeviceInfo).isPhysicalDevice;
  }

  if (Platform.isAndroid) {
    return (plugin as AndroidDeviceInfo).isPhysicalDevice;
  }

  throw UnimplementedError();
}
