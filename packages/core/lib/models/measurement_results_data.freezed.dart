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
    case 'ibeacon':
      return MeasurementResultsDataIbeacon.fromJson(json);
    case 'magnetic':
      return MeasurementResultsDataMagnetic.fromJson(json);

    default:
      return MeasurementResultsDataUnknown.fromJson(json);
  }
}

/// @nodoc
mixin _$MeasurementResultsData {
  MeasurementType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MeasurementType type) unknown,
    required TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)
        wifi,
    required TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)
        ibeacon,
    required TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)
        magnetic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MeasurementType type)? unknown,
    TResult? Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult? Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult? Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MeasurementType type)? unknown,
    TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataIbeacon value) ibeacon,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataIbeacon value)? ibeacon,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataIbeacon value)? ibeacon,
    TResult Function(MeasurementResultsDataMagnetic value)? magnetic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementResultsDataCopyWith<MeasurementResultsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementResultsDataCopyWith<$Res> {
  factory $MeasurementResultsDataCopyWith(MeasurementResultsData value,
          $Res Function(MeasurementResultsData) then) =
      _$MeasurementResultsDataCopyWithImpl<$Res, MeasurementResultsData>;
  @useResult
  $Res call({MeasurementType type});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeasurementResultsDataUnknownImplCopyWith<$Res>
    implements $MeasurementResultsDataCopyWith<$Res> {
  factory _$$MeasurementResultsDataUnknownImplCopyWith(
          _$MeasurementResultsDataUnknownImpl value,
          $Res Function(_$MeasurementResultsDataUnknownImpl) then) =
      __$$MeasurementResultsDataUnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MeasurementType type});
}

/// @nodoc
class __$$MeasurementResultsDataUnknownImplCopyWithImpl<$Res>
    extends _$MeasurementResultsDataCopyWithImpl<$Res,
        _$MeasurementResultsDataUnknownImpl>
    implements _$$MeasurementResultsDataUnknownImplCopyWith<$Res> {
  __$$MeasurementResultsDataUnknownImplCopyWithImpl(
      _$MeasurementResultsDataUnknownImpl _value,
      $Res Function(_$MeasurementResultsDataUnknownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$MeasurementResultsDataUnknownImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementResultsDataUnknownImpl
    extends MeasurementResultsDataUnknown {
  const _$MeasurementResultsDataUnknownImpl(
      {this.type = MeasurementType.unknown})
      : super._();

  factory _$MeasurementResultsDataUnknownImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeasurementResultsDataUnknownImplFromJson(json);

  @override
  @JsonKey()
  final MeasurementType type;

  @override
  String toString() {
    return 'MeasurementResultsData.unknown(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsDataUnknownImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementResultsDataUnknownImplCopyWith<
          _$MeasurementResultsDataUnknownImpl>
      get copyWith => __$$MeasurementResultsDataUnknownImplCopyWithImpl<
          _$MeasurementResultsDataUnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MeasurementType type) unknown,
    required TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)
        wifi,
    required TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)
        ibeacon,
    required TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)
        magnetic,
  }) {
    return unknown(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MeasurementType type)? unknown,
    TResult? Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult? Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult? Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
  }) {
    return unknown?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MeasurementType type)? unknown,
    TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataIbeacon value) ibeacon,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataIbeacon value)? ibeacon,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataIbeacon value)? ibeacon,
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
    return _$$MeasurementResultsDataUnknownImplToJson(
      this,
    );
  }
}

abstract class MeasurementResultsDataUnknown extends MeasurementResultsData {
  const factory MeasurementResultsDataUnknown({final MeasurementType type}) =
      _$MeasurementResultsDataUnknownImpl;
  const MeasurementResultsDataUnknown._() : super._();

  factory MeasurementResultsDataUnknown.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsDataUnknownImpl.fromJson;

  @override
  MeasurementType get type;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementResultsDataUnknownImplCopyWith<
          _$MeasurementResultsDataUnknownImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasurementResultsDataWifiImplCopyWith<$Res>
    implements $MeasurementResultsDataCopyWith<$Res> {
  factory _$$MeasurementResultsDataWifiImplCopyWith(
          _$MeasurementResultsDataWifiImpl value,
          $Res Function(_$MeasurementResultsDataWifiImpl) then) =
      __$$MeasurementResultsDataWifiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MeasurementType type,
      String timestamp,
      String ssid,
      String bssid,
      int rssi,
      int frequency,
      String capabilities,
      int centerFreq0,
      int centerFreq1,
      int channelWidth});
}

/// @nodoc
class __$$MeasurementResultsDataWifiImplCopyWithImpl<$Res>
    extends _$MeasurementResultsDataCopyWithImpl<$Res,
        _$MeasurementResultsDataWifiImpl>
    implements _$$MeasurementResultsDataWifiImplCopyWith<$Res> {
  __$$MeasurementResultsDataWifiImplCopyWithImpl(
      _$MeasurementResultsDataWifiImpl _value,
      $Res Function(_$MeasurementResultsDataWifiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? timestamp = null,
    Object? ssid = null,
    Object? bssid = null,
    Object? rssi = null,
    Object? frequency = null,
    Object? capabilities = null,
    Object? centerFreq0 = null,
    Object? centerFreq1 = null,
    Object? channelWidth = null,
  }) {
    return _then(_$MeasurementResultsDataWifiImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
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
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as String,
      centerFreq0: null == centerFreq0
          ? _value.centerFreq0
          : centerFreq0 // ignore: cast_nullable_to_non_nullable
              as int,
      centerFreq1: null == centerFreq1
          ? _value.centerFreq1
          : centerFreq1 // ignore: cast_nullable_to_non_nullable
              as int,
      channelWidth: null == channelWidth
          ? _value.channelWidth
          : channelWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementResultsDataWifiImpl extends MeasurementResultsDataWifi {
  const _$MeasurementResultsDataWifiImpl(
      {this.type = MeasurementType.wifi,
      required this.timestamp,
      required this.ssid,
      required this.bssid,
      required this.rssi,
      required this.frequency,
      required this.capabilities,
      required this.centerFreq0,
      required this.centerFreq1,
      required this.channelWidth})
      : super._();

  factory _$MeasurementResultsDataWifiImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeasurementResultsDataWifiImplFromJson(json);

  @override
  @JsonKey()
  final MeasurementType type;
  @override
  final String timestamp;
  @override
  final String ssid;
  @override
  final String bssid;
  @override
  final int rssi;
  @override
  final int frequency;
  @override
  final String capabilities;
  @override
  final int centerFreq0;
  @override
  final int centerFreq1;
  @override
  final int channelWidth;

  @override
  String toString() {
    return 'MeasurementResultsData.wifi(type: $type, timestamp: $timestamp, ssid: $ssid, bssid: $bssid, rssi: $rssi, frequency: $frequency, capabilities: $capabilities, centerFreq0: $centerFreq0, centerFreq1: $centerFreq1, channelWidth: $channelWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsDataWifiImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.bssid, bssid) || other.bssid == bssid) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.capabilities, capabilities) ||
                other.capabilities == capabilities) &&
            (identical(other.centerFreq0, centerFreq0) ||
                other.centerFreq0 == centerFreq0) &&
            (identical(other.centerFreq1, centerFreq1) ||
                other.centerFreq1 == centerFreq1) &&
            (identical(other.channelWidth, channelWidth) ||
                other.channelWidth == channelWidth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, timestamp, ssid, bssid,
      rssi, frequency, capabilities, centerFreq0, centerFreq1, channelWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementResultsDataWifiImplCopyWith<_$MeasurementResultsDataWifiImpl>
      get copyWith => __$$MeasurementResultsDataWifiImplCopyWithImpl<
          _$MeasurementResultsDataWifiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MeasurementType type) unknown,
    required TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)
        wifi,
    required TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)
        ibeacon,
    required TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)
        magnetic,
  }) {
    return wifi(type, timestamp, ssid, bssid, rssi, frequency, capabilities,
        centerFreq0, centerFreq1, channelWidth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MeasurementType type)? unknown,
    TResult? Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult? Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult? Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
  }) {
    return wifi?.call(type, timestamp, ssid, bssid, rssi, frequency,
        capabilities, centerFreq0, centerFreq1, channelWidth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MeasurementType type)? unknown,
    TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi(type, timestamp, ssid, bssid, rssi, frequency, capabilities,
          centerFreq0, centerFreq1, channelWidth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataIbeacon value) ibeacon,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) {
    return wifi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataIbeacon value)? ibeacon,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) {
    return wifi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataIbeacon value)? ibeacon,
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
    return _$$MeasurementResultsDataWifiImplToJson(
      this,
    );
  }
}

abstract class MeasurementResultsDataWifi extends MeasurementResultsData {
  const factory MeasurementResultsDataWifi(
      {final MeasurementType type,
      required final String timestamp,
      required final String ssid,
      required final String bssid,
      required final int rssi,
      required final int frequency,
      required final String capabilities,
      required final int centerFreq0,
      required final int centerFreq1,
      required final int channelWidth}) = _$MeasurementResultsDataWifiImpl;
  const MeasurementResultsDataWifi._() : super._();

  factory MeasurementResultsDataWifi.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsDataWifiImpl.fromJson;

  @override
  MeasurementType get type;
  String get timestamp;
  String get ssid;
  String get bssid;
  int get rssi;
  int get frequency;
  String get capabilities;
  int get centerFreq0;
  int get centerFreq1;
  int get channelWidth;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementResultsDataWifiImplCopyWith<_$MeasurementResultsDataWifiImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasurementResultsDataIbeaconImplCopyWith<$Res>
    implements $MeasurementResultsDataCopyWith<$Res> {
  factory _$$MeasurementResultsDataIbeaconImplCopyWith(
          _$MeasurementResultsDataIbeaconImpl value,
          $Res Function(_$MeasurementResultsDataIbeaconImpl) then) =
      __$$MeasurementResultsDataIbeaconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MeasurementType type,
      String uuid,
      int major,
      int minor,
      int rssi,
      String timestamp,
      double accuracy,
      int? proximity,
      int? txPower,
      String? bluetoothAddress});
}

/// @nodoc
class __$$MeasurementResultsDataIbeaconImplCopyWithImpl<$Res>
    extends _$MeasurementResultsDataCopyWithImpl<$Res,
        _$MeasurementResultsDataIbeaconImpl>
    implements _$$MeasurementResultsDataIbeaconImplCopyWith<$Res> {
  __$$MeasurementResultsDataIbeaconImplCopyWithImpl(
      _$MeasurementResultsDataIbeaconImpl _value,
      $Res Function(_$MeasurementResultsDataIbeaconImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? uuid = null,
    Object? major = null,
    Object? minor = null,
    Object? rssi = null,
    Object? timestamp = null,
    Object? accuracy = null,
    Object? proximity = freezed,
    Object? txPower = freezed,
    Object? bluetoothAddress = freezed,
  }) {
    return _then(_$MeasurementResultsDataIbeaconImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
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
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      proximity: freezed == proximity
          ? _value.proximity
          : proximity // ignore: cast_nullable_to_non_nullable
              as int?,
      txPower: freezed == txPower
          ? _value.txPower
          : txPower // ignore: cast_nullable_to_non_nullable
              as int?,
      bluetoothAddress: freezed == bluetoothAddress
          ? _value.bluetoothAddress
          : bluetoothAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementResultsDataIbeaconImpl
    extends MeasurementResultsDataIbeacon {
  const _$MeasurementResultsDataIbeaconImpl(
      {this.type = MeasurementType.ibeacon,
      required this.uuid,
      required this.major,
      required this.minor,
      required this.rssi,
      required this.timestamp,
      required this.accuracy,
      required this.proximity,
      required this.txPower,
      required this.bluetoothAddress})
      : super._();

  factory _$MeasurementResultsDataIbeaconImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeasurementResultsDataIbeaconImplFromJson(json);

  @override
  @JsonKey()
  final MeasurementType type;
  @override
  final String uuid;
  @override
  final int major;
  @override
  final int minor;
  @override
  final int rssi;
  @override
  final String timestamp;
  @override
  final double accuracy;
  @override
  final int? proximity;
  @override
  final int? txPower;
  @override
  final String? bluetoothAddress;

  @override
  String toString() {
    return 'MeasurementResultsData.ibeacon(type: $type, uuid: $uuid, major: $major, minor: $minor, rssi: $rssi, timestamp: $timestamp, accuracy: $accuracy, proximity: $proximity, txPower: $txPower, bluetoothAddress: $bluetoothAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsDataIbeaconImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.proximity, proximity) ||
                other.proximity == proximity) &&
            (identical(other.txPower, txPower) || other.txPower == txPower) &&
            (identical(other.bluetoothAddress, bluetoothAddress) ||
                other.bluetoothAddress == bluetoothAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, uuid, major, minor, rssi,
      timestamp, accuracy, proximity, txPower, bluetoothAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementResultsDataIbeaconImplCopyWith<
          _$MeasurementResultsDataIbeaconImpl>
      get copyWith => __$$MeasurementResultsDataIbeaconImplCopyWithImpl<
          _$MeasurementResultsDataIbeaconImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MeasurementType type) unknown,
    required TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)
        wifi,
    required TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)
        ibeacon,
    required TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)
        magnetic,
  }) {
    return ibeacon(type, uuid, major, minor, rssi, timestamp, accuracy,
        proximity, txPower, bluetoothAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MeasurementType type)? unknown,
    TResult? Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult? Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult? Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
  }) {
    return ibeacon?.call(type, uuid, major, minor, rssi, timestamp, accuracy,
        proximity, txPower, bluetoothAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MeasurementType type)? unknown,
    TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) {
    if (ibeacon != null) {
      return ibeacon(type, uuid, major, minor, rssi, timestamp, accuracy,
          proximity, txPower, bluetoothAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataIbeacon value) ibeacon,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) {
    return ibeacon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataIbeacon value)? ibeacon,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) {
    return ibeacon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataIbeacon value)? ibeacon,
    TResult Function(MeasurementResultsDataMagnetic value)? magnetic,
    required TResult orElse(),
  }) {
    if (ibeacon != null) {
      return ibeacon(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementResultsDataIbeaconImplToJson(
      this,
    );
  }
}

abstract class MeasurementResultsDataIbeacon extends MeasurementResultsData {
  const factory MeasurementResultsDataIbeacon(
          {final MeasurementType type,
          required final String uuid,
          required final int major,
          required final int minor,
          required final int rssi,
          required final String timestamp,
          required final double accuracy,
          required final int? proximity,
          required final int? txPower,
          required final String? bluetoothAddress}) =
      _$MeasurementResultsDataIbeaconImpl;
  const MeasurementResultsDataIbeacon._() : super._();

  factory MeasurementResultsDataIbeacon.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsDataIbeaconImpl.fromJson;

  @override
  MeasurementType get type;
  String get uuid;
  int get major;
  int get minor;
  int get rssi;
  String get timestamp;
  double get accuracy;
  int? get proximity;
  int? get txPower;
  String? get bluetoothAddress;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementResultsDataIbeaconImplCopyWith<
          _$MeasurementResultsDataIbeaconImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasurementResultsDataMagneticImplCopyWith<$Res>
    implements $MeasurementResultsDataCopyWith<$Res> {
  factory _$$MeasurementResultsDataMagneticImplCopyWith(
          _$MeasurementResultsDataMagneticImpl value,
          $Res Function(_$MeasurementResultsDataMagneticImpl) then) =
      __$$MeasurementResultsDataMagneticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MeasurementType type,
      int recordStartTime,
      @BlobConverter() Blob record});
}

/// @nodoc
class __$$MeasurementResultsDataMagneticImplCopyWithImpl<$Res>
    extends _$MeasurementResultsDataCopyWithImpl<$Res,
        _$MeasurementResultsDataMagneticImpl>
    implements _$$MeasurementResultsDataMagneticImplCopyWith<$Res> {
  __$$MeasurementResultsDataMagneticImplCopyWithImpl(
      _$MeasurementResultsDataMagneticImpl _value,
      $Res Function(_$MeasurementResultsDataMagneticImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? recordStartTime = null,
    Object? record = null,
  }) {
    return _then(_$MeasurementResultsDataMagneticImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
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
class _$MeasurementResultsDataMagneticImpl
    extends MeasurementResultsDataMagnetic {
  const _$MeasurementResultsDataMagneticImpl(
      {this.type = MeasurementType.magnetic,
      required this.recordStartTime,
      @BlobConverter() required this.record})
      : super._();

  factory _$MeasurementResultsDataMagneticImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeasurementResultsDataMagneticImplFromJson(json);

  @override
  @JsonKey()
  final MeasurementType type;
  @override
  final int recordStartTime;
  @override
  @BlobConverter()
  final Blob record;

  @override
  String toString() {
    return 'MeasurementResultsData.magnetic(type: $type, recordStartTime: $recordStartTime, record: $record)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsDataMagneticImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.recordStartTime, recordStartTime) ||
                other.recordStartTime == recordStartTime) &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, recordStartTime, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementResultsDataMagneticImplCopyWith<
          _$MeasurementResultsDataMagneticImpl>
      get copyWith => __$$MeasurementResultsDataMagneticImplCopyWithImpl<
          _$MeasurementResultsDataMagneticImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MeasurementType type) unknown,
    required TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)
        wifi,
    required TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)
        ibeacon,
    required TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)
        magnetic,
  }) {
    return magnetic(type, recordStartTime, record);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MeasurementType type)? unknown,
    TResult? Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult? Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult? Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
  }) {
    return magnetic?.call(type, recordStartTime, record);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MeasurementType type)? unknown,
    TResult Function(
            MeasurementType type,
            String timestamp,
            String ssid,
            String bssid,
            int rssi,
            int frequency,
            String capabilities,
            int centerFreq0,
            int centerFreq1,
            int channelWidth)?
        wifi,
    TResult Function(
            MeasurementType type,
            String uuid,
            int major,
            int minor,
            int rssi,
            String timestamp,
            double accuracy,
            int? proximity,
            int? txPower,
            String? bluetoothAddress)?
        ibeacon,
    TResult Function(MeasurementType type, int recordStartTime,
            @BlobConverter() Blob record)?
        magnetic,
    required TResult orElse(),
  }) {
    if (magnetic != null) {
      return magnetic(type, recordStartTime, record);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeasurementResultsDataUnknown value) unknown,
    required TResult Function(MeasurementResultsDataWifi value) wifi,
    required TResult Function(MeasurementResultsDataIbeacon value) ibeacon,
    required TResult Function(MeasurementResultsDataMagnetic value) magnetic,
  }) {
    return magnetic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeasurementResultsDataUnknown value)? unknown,
    TResult? Function(MeasurementResultsDataWifi value)? wifi,
    TResult? Function(MeasurementResultsDataIbeacon value)? ibeacon,
    TResult? Function(MeasurementResultsDataMagnetic value)? magnetic,
  }) {
    return magnetic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeasurementResultsDataUnknown value)? unknown,
    TResult Function(MeasurementResultsDataWifi value)? wifi,
    TResult Function(MeasurementResultsDataIbeacon value)? ibeacon,
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
    return _$$MeasurementResultsDataMagneticImplToJson(
      this,
    );
  }
}

abstract class MeasurementResultsDataMagnetic extends MeasurementResultsData {
  const factory MeasurementResultsDataMagnetic(
          {final MeasurementType type,
          required final int recordStartTime,
          @BlobConverter() required final Blob record}) =
      _$MeasurementResultsDataMagneticImpl;
  const MeasurementResultsDataMagnetic._() : super._();

  factory MeasurementResultsDataMagnetic.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsDataMagneticImpl.fromJson;

  @override
  MeasurementType get type;
  int get recordStartTime;
  @BlobConverter()
  Blob get record;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementResultsDataMagneticImplCopyWith<
          _$MeasurementResultsDataMagneticImpl>
      get copyWith => throw _privateConstructorUsedError;
}
