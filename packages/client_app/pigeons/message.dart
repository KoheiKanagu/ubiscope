import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/message.g.dart',
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
  });

  final String ssid;
  final String bssid;
  final int rssi;
  final int frequency;
}

@HostApi()
abstract class WiFiHostApi {
  void startScan(int interval);
}

@FlutterApi()
abstract class WiFiFlutterApi {
  void onReceiveWiFiList(List<WiFi> results);
}
