// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_results_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasurementResultsData _$MeasurementResultsDataFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'wifi':
      return MeasurementResultsDataWifi.fromJson(json);
    case 'ble':
      return MeasurementResultsDataBle.fromJson(json);
    case 'magnetic':
      return MeasurementResultsDataMagnetic.fromJson(json);

    default:
      return MeasurementResultsDataUnknown.fromJson(json);
  }
}

/// @nodoc
mixin _$MeasurementResultsData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String ssid, String bssid, int rssi, int frequency)
        wifi,
    required TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)
        ble,
    required TResult Function(int recordStartTime, @BlobConverter() Blob record)
        magnetic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult? Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult? Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataBle value) ble,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataBle value)? ble,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataBle value)? ble,
    TResult Function(MeasurementResultsDataMagnetic value)? magnetic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementResultsDataCopyWith<$Res> {
  factory $MeasurementResultsDataCopyWith(MeasurementResultsData value,
          $Res Function(MeasurementResultsData) then) =
      _$MeasurementResultsDataCopyWithImpl<$Res, MeasurementResultsData>;
}

/// @nodoc
class _$MeasurementResultsDataCopyWithImpl<$Res,
        $Val extends MeasurementResultsData>
    implements $MeasurementResultsDataCopyWith<$Res> {
  _$MeasurementResultsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MeasurementResultsDataUnknownCopyWith<$Res> {
  factory _$$MeasurementResultsDataUnknownCopyWith(
          _$MeasurementResultsDataUnknown value,
          $Res Function(_$MeasurementResultsDataUnknown) then) =
      __$$MeasurementResultsDataUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MeasurementResultsDataUnknownCopyWithImpl<$Res>
    extends _$MeasurementResultsDataCopyWithImpl<$Res,
        _$MeasurementResultsDataUnknown>
    implements _$$MeasurementResultsDataUnknownCopyWith<$Res> {
  __$$MeasurementResultsDataUnknownCopyWithImpl(
      _$MeasurementResultsDataUnknown _value,
      $Res Function(_$MeasurementResultsDataUnknown) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$MeasurementResultsDataUnknown extends MeasurementResultsDataUnknown {
  const _$MeasurementResultsDataUnknown({final String? $type})
      : $type = $type ?? 'unknown',
        super._();

  factory _$MeasurementResultsDataUnknown.fromJson(Map<String, dynamic> json) =>
      _$$MeasurementResultsDataUnknownFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MeasurementResultsData.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsDataUnknown);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String ssid, String bssid, int rssi, int frequency)
        wifi,
    required TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)
        ble,
    required TResult Function(int recordStartTime, @BlobConverter() Blob record)
        magnetic,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult? Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult? Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataBle value) ble,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataBle value)? ble,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataBle value)? ble,
    TResult Function(MeasurementResultsDataMagnetic value)? magnetic,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementResultsDataUnknownToJson(
      this,
    );
  }
}

abstract class MeasurementResultsDataUnknown extends MeasurementResultsData {
  const factory MeasurementResultsDataUnknown() =
      _$MeasurementResultsDataUnknown;
  const MeasurementResultsDataUnknown._() : super._();

  factory MeasurementResultsDataUnknown.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsDataUnknown.fromJson;
}

/// @nodoc
abstract class _$$MeasurementResultsDataWifiCopyWith<$Res> {
  factory _$$MeasurementResultsDataWifiCopyWith(
          _$MeasurementResultsDataWifi value,
          $Res Function(_$MeasurementResultsDataWifi) then) =
      __$$MeasurementResultsDataWifiCopyWithImpl<$Res>;
  @useResult
  $Res call({String ssid, String bssid, int rssi, int frequency});
}

/// @nodoc
class __$$MeasurementResultsDataWifiCopyWithImpl<$Res>
    extends _$MeasurementResultsDataCopyWithImpl<$Res,
        _$MeasurementResultsDataWifi>
    implements _$$MeasurementResultsDataWifiCopyWith<$Res> {
  __$$MeasurementResultsDataWifiCopyWithImpl(
      _$MeasurementResultsDataWifi _value,
      $Res Function(_$MeasurementResultsDataWifi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? bssid = null,
    Object? rssi = null,
    Object? frequency = null,
  }) {
    return _then(_$MeasurementResultsDataWifi(
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      bssid: null == bssid
          ? _value.bssid
          : bssid // ignore: cast_nullable_to_non_nullable
              as String,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementResultsDataWifi extends MeasurementResultsDataWifi {
  const _$MeasurementResultsDataWifi(
      {required this.ssid,
      required this.bssid,
      required this.rssi,
      required this.frequency,
      final String? $type})
      : $type = $type ?? 'wifi',
        super._();

  factory _$MeasurementResultsDataWifi.fromJson(Map<String, dynamic> json) =>
      _$$MeasurementResultsDataWifiFromJson(json);

  @override
  final String ssid;
  @override
  final String bssid;
  @override
  final int rssi;
  @override
  final int frequency;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MeasurementResultsData.wifi(ssid: $ssid, bssid: $bssid, rssi: $rssi, frequency: $frequency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsDataWifi &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.bssid, bssid) || other.bssid == bssid) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ssid, bssid, rssi, frequency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementResultsDataWifiCopyWith<_$MeasurementResultsDataWifi>
      get copyWith => __$$MeasurementResultsDataWifiCopyWithImpl<
          _$MeasurementResultsDataWifi>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String ssid, String bssid, int rssi, int frequency)
        wifi,
    required TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)
        ble,
    required TResult Function(int recordStartTime, @BlobConverter() Blob record)
        magnetic,
  }) {
    return wifi(ssid, bssid, rssi, frequency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult? Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult? Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
  }) {
    return wifi?.call(ssid, bssid, rssi, frequency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi(ssid, bssid, rssi, frequency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataBle value) ble,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) {
    return wifi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataBle value)? ble,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) {
    return wifi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataBle value)? ble,
    TResult Function(MeasurementResultsDataMagnetic value)? magnetic,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementResultsDataWifiToJson(
      this,
    );
  }
}

abstract class MeasurementResultsDataWifi extends MeasurementResultsData {
  const factory MeasurementResultsDataWifi(
      {required final String ssid,
      required final String bssid,
      required final int rssi,
      required final int frequency}) = _$MeasurementResultsDataWifi;
  const MeasurementResultsDataWifi._() : super._();

  factory MeasurementResultsDataWifi.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsDataWifi.fromJson;

  String get ssid;
  String get bssid;
  int get rssi;
  int get frequency;
  @JsonKey(ignore: true)
  _$$MeasurementResultsDataWifiCopyWith<_$MeasurementResultsDataWifi>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasurementResultsDataBleCopyWith<$Res> {
  factory _$$MeasurementResultsDataBleCopyWith(
          _$MeasurementResultsDataBle value,
          $Res Function(_$MeasurementResultsDataBle) then) =
      __$$MeasurementResultsDataBleCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String deviceName,
      String macAddress,
      int rssi,
      int txPower,
      String uuid,
      int major,
      int minor});
}

/// @nodoc
class __$$MeasurementResultsDataBleCopyWithImpl<$Res>
    extends _$MeasurementResultsDataCopyWithImpl<$Res,
        _$MeasurementResultsDataBle>
    implements _$$MeasurementResultsDataBleCopyWith<$Res> {
  __$$MeasurementResultsDataBleCopyWithImpl(_$MeasurementResultsDataBle _value,
      $Res Function(_$MeasurementResultsDataBle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = null,
    Object? macAddress = null,
    Object? rssi = null,
    Object? txPower = null,
    Object? uuid = null,
    Object? major = null,
    Object? minor = null,
  }) {
    return _then(_$MeasurementResultsDataBle(
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
      txPower: null == txPower
          ? _value.txPower
          : txPower // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementResultsDataBle extends MeasurementResultsDataBle {
  const _$MeasurementResultsDataBle(
      {required this.deviceName,
      required this.macAddress,
      required this.rssi,
      required this.txPower,
      required this.uuid,
      required this.major,
      required this.minor,
      final String? $type})
      : $type = $type ?? 'ble',
        super._();

  factory _$MeasurementResultsDataBle.fromJson(Map<String, dynamic> json) =>
      _$$MeasurementResultsDataBleFromJson(json);

  @override
  final String deviceName;
  @override
  final String macAddress;
  @override
  final int rssi;
  @override
  final int txPower;
  @override
  final String uuid;
  @override
  final int major;
  @override
  final int minor;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MeasurementResultsData.ble(deviceName: $deviceName, macAddress: $macAddress, rssi: $rssi, txPower: $txPower, uuid: $uuid, major: $major, minor: $minor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsDataBle &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.txPower, txPower) || other.txPower == txPower) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceName, macAddress, rssi, txPower, uuid, major, minor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementResultsDataBleCopyWith<_$MeasurementResultsDataBle>
      get copyWith => __$$MeasurementResultsDataBleCopyWithImpl<
          _$MeasurementResultsDataBle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String ssid, String bssid, int rssi, int frequency)
        wifi,
    required TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)
        ble,
    required TResult Function(int recordStartTime, @BlobConverter() Blob record)
        magnetic,
  }) {
    return ble(deviceName, macAddress, rssi, txPower, uuid, major, minor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult? Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult? Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
  }) {
    return ble?.call(deviceName, macAddress, rssi, txPower, uuid, major, minor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) {
    if (ble != null) {
      return ble(deviceName, macAddress, rssi, txPower, uuid, major, minor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataBle value) ble,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) {
    return ble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataBle value)? ble,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) {
    return ble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataBle value)? ble,
    TResult Function(MeasurementResultsDataMagnetic value)? magnetic,
    required TResult orElse(),
  }) {
    if (ble != null) {
      return ble(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementResultsDataBleToJson(
      this,
    );
  }
}

abstract class MeasurementResultsDataBle extends MeasurementResultsData {
  const factory MeasurementResultsDataBle(
      {required final String deviceName,
      required final String macAddress,
      required final int rssi,
      required final int txPower,
      required final String uuid,
      required final int major,
      required final int minor}) = _$MeasurementResultsDataBle;
  const MeasurementResultsDataBle._() : super._();

  factory MeasurementResultsDataBle.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsDataBle.fromJson;

  String get deviceName;
  String get macAddress;
  int get rssi;
  int get txPower;
  String get uuid;
  int get major;
  int get minor;
  @JsonKey(ignore: true)
  _$$MeasurementResultsDataBleCopyWith<_$MeasurementResultsDataBle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasurementResultsDataMagneticCopyWith<$Res> {
  factory _$$MeasurementResultsDataMagneticCopyWith(
          _$MeasurementResultsDataMagnetic value,
          $Res Function(_$MeasurementResultsDataMagnetic) then) =
      __$$MeasurementResultsDataMagneticCopyWithImpl<$Res>;
  @useResult
  $Res call({int recordStartTime, @BlobConverter() Blob record});
}

/// @nodoc
class __$$MeasurementResultsDataMagneticCopyWithImpl<$Res>
    extends _$MeasurementResultsDataCopyWithImpl<$Res,
        _$MeasurementResultsDataMagnetic>
    implements _$$MeasurementResultsDataMagneticCopyWith<$Res> {
  __$$MeasurementResultsDataMagneticCopyWithImpl(
      _$MeasurementResultsDataMagnetic _value,
      $Res Function(_$MeasurementResultsDataMagnetic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordStartTime = null,
    Object? record = null,
  }) {
    return _then(_$MeasurementResultsDataMagnetic(
      recordStartTime: null == recordStartTime
          ? _value.recordStartTime
          : recordStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Blob,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementResultsDataMagnetic extends MeasurementResultsDataMagnetic {
  const _$MeasurementResultsDataMagnetic(
      {required this.recordStartTime,
      @BlobConverter() required this.record,
      final String? $type})
      : $type = $type ?? 'magnetic',
        super._();

  factory _$MeasurementResultsDataMagnetic.fromJson(
          Map<String, dynamic> json) =>
      _$$MeasurementResultsDataMagneticFromJson(json);

  @override
  final int recordStartTime;
  @override
  @BlobConverter()
  final Blob record;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MeasurementResultsData.magnetic(recordStartTime: $recordStartTime, record: $record)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsDataMagnetic &&
            (identical(other.recordStartTime, recordStartTime) ||
                other.recordStartTime == recordStartTime) &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordStartTime, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementResultsDataMagneticCopyWith<_$MeasurementResultsDataMagnetic>
      get copyWith => __$$MeasurementResultsDataMagneticCopyWithImpl<
          _$MeasurementResultsDataMagnetic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String ssid, String bssid, int rssi, int frequency)
        wifi,
    required TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)
        ble,
    required TResult Function(int recordStartTime, @BlobConverter() Blob record)
        magnetic,
  }) {
    return magnetic(recordStartTime, record);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult? Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult? Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
  }) {
    return magnetic?.call(recordStartTime, record);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String ssid, String bssid, int rssi, int frequency)? wifi,
    TResult Function(String deviceName, String macAddress, int rssi,
            int txPower, String uuid, int major, int minor)?
        ble,
    TResult Function(int recordStartTime, @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) {
    if (magnetic != null) {
      return magnetic(recordStartTime, record);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataBle value) ble,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) {
    return magnetic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataBle value)? ble,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) {
    return magnetic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataBle value)? ble,
    TResult Function(MeasurementResultsDataMagnetic value)? magnetic,
    required TResult orElse(),
  }) {
    if (magnetic != null) {
      return magnetic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementResultsDataMagneticToJson(
      this,
    );
  }
}

abstract class MeasurementResultsDataMagnetic extends MeasurementResultsData {
  const factory MeasurementResultsDataMagnetic(
          {required final int recordStartTime,
          @BlobConverter() required final Blob record}) =
      _$MeasurementResultsDataMagnetic;
  const MeasurementResultsDataMagnetic._() : super._();

  factory MeasurementResultsDataMagnetic.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsDataMagnetic.fromJson;

  int get recordStartTime;
  @BlobConverter()
  Blob get record;
  @JsonKey(ignore: true)
  _$$MeasurementResultsDataMagneticCopyWith<_$MeasurementResultsDataMagnetic>
      get copyWith => throw _privateConstructorUsedError;
}
