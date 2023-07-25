// Copyright 2023 kingu.dev. All rights reserved.
// Autogenerated from Pigeon (v10.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

class WiFi {
  WiFi({
    required this.timestamp,
    required this.ssid,
    required this.bssid,
    required this.rssi,
    required this.frequency,
    required this.capabilities,
    required this.centerFreq0,
    required this.centerFreq1,
    required this.channelWidth,
  });

  /// A timestamp representing when the beacon was observed.
  /// ISO 8601 formatted string
  String timestamp;

  /// The network name.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#SSID
  String ssid;

  /// The address of the access point.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#BSSID
  String bssid;

  /// The detected signal level in dBm, also known as the RSSI.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#level
  int rssi;

  /// The center frequency of the primary 20 MHz frequency (in MHz) of the channel over which the client is communicating with the access point.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#frequency
  int frequency;

  /// Describes the authentication, key management, and encryption schemes supported by the access point.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#capabilities
  String capabilities;

  /// Not used if the AP bandwidth is 20 MHz If the AP use 40, 80, 160 or 320MHz, this is the center frequency (in MHz) if the AP use 80 + 80 MHz, this is the center frequency of the first segment (in MHz)
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#centerFreq0
  int centerFreq0;

  /// Only used if the AP bandwidth is 80 + 80 MHz if the AP use 80 + 80 MHz, this is the center frequency of the second segment (in MHz)
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#centerFreq1
  int centerFreq1;

  /// AP Channel bandwidth
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#channelWidth
  int channelWidth;

  Object encode() {
    return <Object?>[
      timestamp,
      ssid,
      bssid,
      rssi,
      frequency,
      capabilities,
      centerFreq0,
      centerFreq1,
      channelWidth,
    ];
  }

  static WiFi decode(Object result) {
    result as List<Object?>;
    return WiFi(
      timestamp: result[0]! as String,
      ssid: result[1]! as String,
      bssid: result[2]! as String,
      rssi: result[3]! as int,
      frequency: result[4]! as int,
      capabilities: result[5]! as String,
      centerFreq0: result[6]! as int,
      centerFreq1: result[7]! as int,
      channelWidth: result[8]! as int,
    );
  }
}

class Beacon {
  Beacon({
    required this.uuid,
    required this.major,
    required this.minor,
    required this.rssi,
    required this.timestamp,
    required this.accuracy,
    required this.proximity,
  });

  /// The UUID that the observed beacon transmitted.
  ///
  /// https://developer.apple.com/documentation/corelocation/clbeacon/3183017-uuid
  String uuid;

  /// The major value that the observed beacon transmitted.
  ///
  /// https://developer.apple.com/documentation/corelocation/clbeacon/1621418-major
  int major;

  /// The minor value that the observed beacon transmitted.
  ///
  /// https://developer.apple.com/documentation/corelocation/clbeacon/1621558-minor
  int minor;

  /// The received signal strength of the beacon, measured in decibels.
  /// May be 0 for some reason. It is a specification of CoreLocation.
  ///
  /// https://developer.apple.com/documentation/corelocation/clbeacon/1621557-rssi
  int rssi;

  /// A timestamp representing when the beacon was observed.
  /// ISO 8601 formatted string
  ///
  /// https://developer.apple.com/documentation/corelocation/clbeacon/3183021-timestamp
  String timestamp;

  /// The accuracy of the proximity value, measured in meters from the beacon.
  ///
  /// https://developer.apple.com/documentation/corelocation/clbeacon/1621551-accuracy
  double accuracy;

  /// Constants that reflect the relative distance to a beacon.
  ///
  /// https://developer.apple.com/documentation/corelocation/clproximity
  int proximity;

  Object encode() {
    return <Object?>[
      uuid,
      major,
      minor,
      rssi,
      timestamp,
      accuracy,
      proximity,
    ];
  }

  static Beacon decode(Object result) {
    result as List<Object?>;
    return Beacon(
      uuid: result[0]! as String,
      major: result[1]! as int,
      minor: result[2]! as int,
      rssi: result[3]! as int,
      timestamp: result[4]! as String,
      accuracy: result[5]! as double,
      proximity: result[6]! as int,
    );
  }
}

class WiFiHostApi {
  /// Constructor for [WiFiHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  WiFiHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = StandardMessageCodec();

  Future<bool> isScanThrottleEnabled() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WiFiHostApi.isScanThrottleEnabled', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<bool> startScan() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WiFiHostApi.startScan', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<void> stopScan() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WiFiHostApi.stopScan', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}

class _WiFiFlutterApiCodec extends StandardMessageCodec {
  const _WiFiFlutterApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is WiFi) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return WiFi.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class WiFiFlutterApi {
  static const MessageCodec<Object?> codec = _WiFiFlutterApiCodec();

  void onReceived(List<WiFi?> results);

  static void setup(WiFiFlutterApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.WiFiFlutterApi.onReceived', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.WiFiFlutterApi.onReceived was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final List<WiFi?>? arg_results = (args[0] as List<Object?>?)?.cast<WiFi?>();
          assert(arg_results != null,
              'Argument for dev.flutter.pigeon.WiFiFlutterApi.onReceived was null, expected non-null List<WiFi?>.');
          api.onReceived(arg_results!);
          return;
        });
      }
    }
  }
}

class BeaconHostApi {
  /// Constructor for [BeaconHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  BeaconHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = StandardMessageCodec();

  /// start scanning beacons
  ///
  /// [uuid] is required
  /// [major] and [minor] are optional. If not specified, all majors and minors are targeted.
  Future<bool> startScan(String arg_uuid, int? arg_major, int? arg_minor) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.BeaconHostApi.startScan', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_uuid, arg_major, arg_minor]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<void> stopScan() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.BeaconHostApi.stopScan', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}

class _BeaconFlutterApiCodec extends StandardMessageCodec {
  const _BeaconFlutterApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Beacon) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return Beacon.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class BeaconFlutterApi {
  static const MessageCodec<Object?> codec = _BeaconFlutterApiCodec();

  void onReceived(List<Beacon?> results);

  static void setup(BeaconFlutterApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.BeaconFlutterApi.onReceived', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.BeaconFlutterApi.onReceived was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final List<Beacon?>? arg_results = (args[0] as List<Object?>?)?.cast<Beacon?>();
          assert(arg_results != null,
              'Argument for dev.flutter.pigeon.BeaconFlutterApi.onReceived was null, expected non-null List<Beacon?>.');
          api.onReceived(arg_results!);
          return;
        });
      }
    }
  }
}
