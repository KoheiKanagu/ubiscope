import 'dart:async';

import 'package:client_app/gen/message.g.dart';

class MyWiFiFlutterApi implements WiFiFlutterApi {
  MyWiFiFlutterApi(this.controller);

  final StreamController<List<WiFi?>> controller;

  @override
  void onReceiveWiFiList(List<WiFi?> results) {
    controller.sink.add(results);
    print(results);

    for (final element in results) {
      print(element?.ssid);
      print(element?.bssid);
      print(element?.rssi);
      print(element?.frequency);
    }
  }
}
