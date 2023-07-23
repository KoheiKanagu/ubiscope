// Copyright 2023 kingu.dev. All rights reserved.
// Autogenerated from Pigeon (v10.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

/// Generated class from Pigeon that represents data sent in messages.
struct WiFi {
  /// unix time in milliseconds
  var timestamp: Int64
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#SSID
  var ssid: String
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#BSSID
  var bssid: String
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#level
  var rssi: Int64
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#frequency
  var frequency: Int64
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#capabilities
  var capabilities: String
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#centerFreq0
  var centerFreq0: Int64
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#centerFreq1
  var centerFreq1: Int64
  /// https://developer.android.com/reference/android/net/wifi/ScanResult#channelWidth
  var channelWidth: Int64

  static func fromList(_ list: [Any?]) -> WiFi? {
    let timestamp = list[0] is Int64 ? list[0] as! Int64 : Int64(list[0] as! Int32)
    let ssid = list[1] as! String
    let bssid = list[2] as! String
    let rssi = list[3] is Int64 ? list[3] as! Int64 : Int64(list[3] as! Int32)
    let frequency = list[4] is Int64 ? list[4] as! Int64 : Int64(list[4] as! Int32)
    let capabilities = list[5] as! String
    let centerFreq0 = list[6] is Int64 ? list[6] as! Int64 : Int64(list[6] as! Int32)
    let centerFreq1 = list[7] is Int64 ? list[7] as! Int64 : Int64(list[7] as! Int32)
    let channelWidth = list[8] is Int64 ? list[8] as! Int64 : Int64(list[8] as! Int32)

    return WiFi(
      timestamp: timestamp,
      ssid: ssid,
      bssid: bssid,
      rssi: rssi,
      frequency: frequency,
      capabilities: capabilities,
      centerFreq0: centerFreq0,
      centerFreq1: centerFreq1,
      channelWidth: channelWidth
    )
  }
  func toList() -> [Any?] {
    return [
      timestamp,
      ssid,
      bssid,
      rssi,
      frequency,
      capabilities,
      centerFreq0,
      centerFreq1,
      channelWidth,
    ]
  }
}
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol WiFiHostApi {
  func isScanThrottleEnabled() throws -> Bool
  func startScan() throws -> Bool
  func stopScan() throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class WiFiHostApiSetup {
  /// The codec used by WiFiHostApi.
  /// Sets up an instance of `WiFiHostApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: WiFiHostApi?) {
    let isScanThrottleEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.WiFiHostApi.isScanThrottleEnabled", binaryMessenger: binaryMessenger)
    if let api = api {
      isScanThrottleEnabledChannel.setMessageHandler { _, reply in
        do {
          let result = try api.isScanThrottleEnabled()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      isScanThrottleEnabledChannel.setMessageHandler(nil)
    }
    let startScanChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.WiFiHostApi.startScan", binaryMessenger: binaryMessenger)
    if let api = api {
      startScanChannel.setMessageHandler { _, reply in
        do {
          let result = try api.startScan()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      startScanChannel.setMessageHandler(nil)
    }
    let stopScanChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.WiFiHostApi.stopScan", binaryMessenger: binaryMessenger)
    if let api = api {
      stopScanChannel.setMessageHandler { _, reply in
        do {
          try api.stopScan()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      stopScanChannel.setMessageHandler(nil)
    }
  }
}
private class WiFiFlutterApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return WiFi.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class WiFiFlutterApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? WiFi {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class WiFiFlutterApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return WiFiFlutterApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return WiFiFlutterApiCodecWriter(data: data)
  }
}

class WiFiFlutterApiCodec: FlutterStandardMessageCodec {
  static let shared = WiFiFlutterApiCodec(readerWriter: WiFiFlutterApiCodecReaderWriter())
}

/// Generated class from Pigeon that represents Flutter messages that can be called from Swift.
class WiFiFlutterApi {
  private let binaryMessenger: FlutterBinaryMessenger
  init(binaryMessenger: FlutterBinaryMessenger){
    self.binaryMessenger = binaryMessenger
  }
  var codec: FlutterStandardMessageCodec {
    return WiFiFlutterApiCodec.shared
  }
  func onReceiveWiFiList(results resultsArg: [WiFi], completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.WiFiFlutterApi.onReceiveWiFiList", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([resultsArg] as [Any?]) { _ in
      completion()
    }
  }
}
