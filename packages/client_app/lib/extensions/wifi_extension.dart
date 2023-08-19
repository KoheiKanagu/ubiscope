import 'package:client_app/gen/message.g.dart';
import 'package:core/core.dart';

extension WiFiExtension on WiFi {
  MeasurementResultsData get toResultData => MeasurementResultsData.wifi(
        timestamp: timestamp,
        ssid: ssid,
        bssid: bssid,
        rssi: rssi,
        frequency: frequency,
        capabilities: capabilities,
        centerFreq0: centerFreq0,
        centerFreq1: centerFreq1,
        channelWidth: channelWidth,
      );
}
