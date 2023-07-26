// ignore_for_file: lines_longer_than_80_chars

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/gen/message.g.dart',
    swiftOut: 'ios/Runner/Messages.g.swift',
    kotlinOptions: KotlinOptions(
      package: 'dev.kingu.ubiscope',
    ),
    kotlinOut: 'android/app/src/main/kotlin/dev/kingu/ubiscope/Messages.g.kt',
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)
class WiFi {
  const WiFi({
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
  final String timestamp;

  /// The network name.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#SSID
  final String ssid;

  /// The address of the access point.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#BSSID
  final String bssid;

  /// The detected signal level in dBm, also known as the RSSI.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#level
  final int rssi;

  /// The center frequency of the primary 20 MHz frequency (in MHz) of the channel over which the client is communicating with the access point.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#frequency
  final int frequency;

  /// Describes the authentication, key management, and encryption schemes supported by the access point.
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#capabilities
  final String capabilities;

  /// Not used if the AP bandwidth is 20 MHz If the AP use 40, 80, 160 or 320MHz, this is the center frequency (in MHz) if the AP use 80 + 80 MHz, this is the center frequency of the first segment (in MHz)
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#centerFreq0
  final int centerFreq0;

  /// Only used if the AP bandwidth is 80 + 80 MHz if the AP use 80 + 80 MHz, this is the center frequency of the second segment (in MHz)
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#centerFreq1
  final int centerFreq1;

  /// AP Channel bandwidth
  ///
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#channelWidth
  final int channelWidth;
}

@HostApi()
abstract class WiFiHostApi {
  bool isScanThrottleEnabled();

  bool startScan();

  void stopScan();
}

@FlutterApi()
// ignore: one_member_abstracts
abstract class WiFiFlutterApi {
  void onReceived(List<WiFi> results);
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
    required this.txPower,
    required this.bluetoothAddress,
    required this.type,
  });

  /// The UUID that the observed beacon transmitted.
  ///
  /// for iOS: https://developer.apple.com/documentation/corelocation/clbeacon/3183017-uuid
  /// for Android: https://altbeacon.github.io/android-beacon-library/javadoc/org/altbeacon/beacon/Beacon.html#getId1()
  final String uuid;

  /// The major value that the observed beacon transmitted.
  ///
  /// for iOS: https://developer.apple.com/documentation/corelocation/clbeacon/1621418-major
  /// for Android: https://altbeacon.github.io/android-beacon-library/javadoc/org/altbeacon/beacon/Beacon.html#getId2()
  final int major;

  /// The minor value that the observed beacon transmitted.
  ///
  /// for iOS: https://developer.apple.com/documentation/corelocation/clbeacon/1621558-minor
  /// for Android: https://altbeacon.github.io/android-beacon-library/javadoc/org/altbeacon/beacon/Beacon.html#getId3()
  final int minor;

  /// The received signal strength of the beacon, measured in decibels.
  /// May be 0 for some reason. It is a specification of Core Location.
  ///
  /// for iOS: https://developer.apple.com/documentation/corelocation/clbeacon/1621557-rssi
  /// for Android: https://altbeacon.github.io/android-beacon-library/javadoc/org/altbeacon/beacon/Beacon.html#getRssi()
  final int rssi;

  /// A timestamp representing when the beacon was observed.
  /// ISO 8601 formatted string
  ///
  /// for iOS: https://developer.apple.com/documentation/corelocation/clbeacon/3183021-timestamp
  /// for Android:
  final String timestamp;

  /// The accuracy of the proximity value, measured in meters from the beacon.
  ///
  /// for iOS: https://developer.apple.com/documentation/corelocation/clbeacon/1621551-accuracy
  /// for Android: https://altbeacon.github.io/android-beacon-library/javadoc/org/altbeacon/beacon/Beacon.html#getDistance()
  final double accuracy;

  /// Constants that reflect the relative distance to a beacon.
  ///
  /// for iOS: https://developer.apple.com/documentation/corelocation/clproximity
  /// for Android: Always returns null.
  final int? proximity;

  /// The received signal strength of the beacon from 1 meter away, measured in decibels.
  ///
  /// for iOS: Always returns null. beacause it cannot be obtained with Core Location.
  /// for Android: https://altbeacon.github.io/android-beacon-library/javadoc/org/altbeacon/beacon/Beacon.html#getTxPower()
  final int? txPower;

  /// The Bluetooth address of the beacon.
  ///
  /// for iOS: Always returns null. beacause it cannot be obtained with Core Location.
  /// for Android: https://altbeacon.github.io/android-beacon-library/javadoc/org/altbeacon/beacon/Beacon.html#getBluetoothAddress()
  final String? bluetoothAddress;

  /// The type of beacon.
  ///
  /// for iOS: Always returns [BeaconType.iBeacon].
  /// for Android: Always returns [BeaconType.iBeacon].
  final BeaconType type;
}

enum BeaconType {
  iBeacon,
  ;
}

@HostApi()
abstract class BeaconHostApi {
  /// start scanning beacons
  ///
  /// [uuid] is required
  /// [major] and [minor] are optional. If not specified, all majors and minors are targeted.
  bool startScan(
    String uuid,
    int? major,
    int? minor,
  );

  void stopScan();
}

@FlutterApi()
// ignore: one_member_abstracts
abstract class BeaconFlutterApi {
  void onReceived(List<Beacon> results);
}
