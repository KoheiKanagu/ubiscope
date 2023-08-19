import 'package:client_app/gen/message.g.dart';
import 'package:core/core.dart';

extension BeaconExtension on Beacon {
  MeasurementResultsData get toResultData => MeasurementResultsData.ibeacon(
        uuid: uuid,
        major: major,
        minor: minor,
        rssi: rssi,
        timestamp: timestamp,
        accuracy: accuracy,
        proximity: proximity,
        txPower: txPower,
        bluetoothAddress: bluetoothAddress,
      );
}
