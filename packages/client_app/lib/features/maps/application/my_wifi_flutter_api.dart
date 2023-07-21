import 'dart:async';

import 'package:client_app/src/message.g.dart';

class MyWiFiFlutterApi implements WiFiFlutterApi {
  MyWiFiFlutterApi(this.controller);

  final StreamController<int> controller;

  @override
  void onReceiveWiFiList(List<WiFi?> results) {
    controller.sink.add(1);
    print(results);
  }
}
