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
    required this.ssid,
    required this.bssid,
    required this.rssi,
    required this.frequency,
    required this.capabilities,
    required this.centerFreq0,
    required this.centerFreq1,
    required this.channelWidth,
  });

  /// https://developer.android.com/reference/android/net/wifi/ScanResult#SSID
  final String ssid;

  /// https://developer.android.com/reference/android/net/wifi/ScanResult#BSSID
  final String bssid;

  /// https://developer.android.com/reference/android/net/wifi/ScanResult#level
  final int rssi;

  /// https://developer.android.com/reference/android/net/wifi/ScanResult#frequency
  final int frequency;

  /// https://developer.android.com/reference/android/net/wifi/ScanResult#capabilities
  final String capabilities;

  /// https://developer.android.com/reference/android/net/wifi/ScanResult#centerFreq0
  final int centerFreq0;

  /// https://developer.android.com/reference/android/net/wifi/ScanResult#centerFreq1
  final int centerFreq1;

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
  void onReceiveWiFiList(List<WiFi> results);
}
