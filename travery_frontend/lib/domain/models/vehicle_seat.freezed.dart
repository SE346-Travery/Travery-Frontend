// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VehicleSeat _$VehicleSeatFromJson(Map<String, dynamic> json) {
  return _VehicleSeat.fromJson(json);
}

/// @nodoc
mixin _$VehicleSeat {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_id')
  String get vehicleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'seat_code')
  String get seatCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_number')
  int? get floorNumber => throw _privateConstructorUsedError;
  SeatRowZone get rowZone => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATION
  Vehicle? get vehicle => throw _privateConstructorUsedError;

  /// Serializes this VehicleSeat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VehicleSeat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VehicleSeatCopyWith<VehicleSeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleSeatCopyWith<$Res> {
  factory $VehicleSeatCopyWith(
    VehicleSeat value,
    $Res Function(VehicleSeat) then,
  ) = _$VehicleSeatCopyWithImpl<$Res, VehicleSeat>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'vehicle_id') String vehicleId,
    @JsonKey(name: 'seat_code') String seatCode,
    @JsonKey(name: 'floor_number') int? floorNumber,
    SeatRowZone rowZone,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Vehicle? vehicle,
  });

  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class _$VehicleSeatCopyWithImpl<$Res, $Val extends VehicleSeat>
    implements $VehicleSeatCopyWith<$Res> {
  _$VehicleSeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VehicleSeat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vehicleId = null,
    Object? seatCode = null,
    Object? floorNumber = freezed,
    Object? rowZone = null,
    Object? isAvailable = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? vehicle = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            vehicleId: null == vehicleId
                ? _value.vehicleId
                : vehicleId // ignore: cast_nullable_to_non_nullable
                      as String,
            seatCode: null == seatCode
                ? _value.seatCode
                : seatCode // ignore: cast_nullable_to_non_nullable
                      as String,
            floorNumber: freezed == floorNumber
                ? _value.floorNumber
                : floorNumber // ignore: cast_nullable_to_non_nullable
                      as int?,
            rowZone: null == rowZone
                ? _value.rowZone
                : rowZone // ignore: cast_nullable_to_non_nullable
                      as SeatRowZone,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            vehicle: freezed == vehicle
                ? _value.vehicle
                : vehicle // ignore: cast_nullable_to_non_nullable
                      as Vehicle?,
          )
          as $Val,
    );
  }

  /// Create a copy of VehicleSeat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VehicleSeatImplCopyWith<$Res>
    implements $VehicleSeatCopyWith<$Res> {
  factory _$$VehicleSeatImplCopyWith(
    _$VehicleSeatImpl value,
    $Res Function(_$VehicleSeatImpl) then,
  ) = __$$VehicleSeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'vehicle_id') String vehicleId,
    @JsonKey(name: 'seat_code') String seatCode,
    @JsonKey(name: 'floor_number') int? floorNumber,
    SeatRowZone rowZone,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Vehicle? vehicle,
  });

  @override
  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$$VehicleSeatImplCopyWithImpl<$Res>
    extends _$VehicleSeatCopyWithImpl<$Res, _$VehicleSeatImpl>
    implements _$$VehicleSeatImplCopyWith<$Res> {
  __$$VehicleSeatImplCopyWithImpl(
    _$VehicleSeatImpl _value,
    $Res Function(_$VehicleSeatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VehicleSeat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vehicleId = null,
    Object? seatCode = null,
    Object? floorNumber = freezed,
    Object? rowZone = null,
    Object? isAvailable = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? vehicle = freezed,
  }) {
    return _then(
      _$VehicleSeatImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        vehicleId: null == vehicleId
            ? _value.vehicleId
            : vehicleId // ignore: cast_nullable_to_non_nullable
                  as String,
        seatCode: null == seatCode
            ? _value.seatCode
            : seatCode // ignore: cast_nullable_to_non_nullable
                  as String,
        floorNumber: freezed == floorNumber
            ? _value.floorNumber
            : floorNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        rowZone: null == rowZone
            ? _value.rowZone
            : rowZone // ignore: cast_nullable_to_non_nullable
                  as SeatRowZone,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        vehicle: freezed == vehicle
            ? _value.vehicle
            : vehicle // ignore: cast_nullable_to_non_nullable
                  as Vehicle?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleSeatImpl implements _VehicleSeat {
  const _$VehicleSeatImpl({
    this.id,
    @JsonKey(name: 'vehicle_id') required this.vehicleId,
    @JsonKey(name: 'seat_code') required this.seatCode,
    @JsonKey(name: 'floor_number') this.floorNumber,
    required this.rowZone,
    @JsonKey(name: 'is_available') this.isAvailable = true,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.vehicle,
  });

  factory _$VehicleSeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleSeatImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'vehicle_id')
  final String vehicleId;
  @override
  @JsonKey(name: 'seat_code')
  final String seatCode;
  @override
  @JsonKey(name: 'floor_number')
  final int? floorNumber;
  @override
  final SeatRowZone rowZone;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATION
  @override
  final Vehicle? vehicle;

  @override
  String toString() {
    return 'VehicleSeat(id: $id, vehicleId: $vehicleId, seatCode: $seatCode, floorNumber: $floorNumber, rowZone: $rowZone, isAvailable: $isAvailable, createdAt: $createdAt, updatedAt: $updatedAt, vehicle: $vehicle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleSeatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.seatCode, seatCode) ||
                other.seatCode == seatCode) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.rowZone, rowZone) || other.rowZone == rowZone) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    vehicleId,
    seatCode,
    floorNumber,
    rowZone,
    isAvailable,
    createdAt,
    updatedAt,
    vehicle,
  );

  /// Create a copy of VehicleSeat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleSeatImplCopyWith<_$VehicleSeatImpl> get copyWith =>
      __$$VehicleSeatImplCopyWithImpl<_$VehicleSeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleSeatImplToJson(this);
  }
}

abstract class _VehicleSeat implements VehicleSeat {
  const factory _VehicleSeat({
    final String? id,
    @JsonKey(name: 'vehicle_id') required final String vehicleId,
    @JsonKey(name: 'seat_code') required final String seatCode,
    @JsonKey(name: 'floor_number') final int? floorNumber,
    required final SeatRowZone rowZone,
    @JsonKey(name: 'is_available') final bool isAvailable,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final Vehicle? vehicle,
  }) = _$VehicleSeatImpl;

  factory _VehicleSeat.fromJson(Map<String, dynamic> json) =
      _$VehicleSeatImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'vehicle_id')
  String get vehicleId;
  @override
  @JsonKey(name: 'seat_code')
  String get seatCode;
  @override
  @JsonKey(name: 'floor_number')
  int? get floorNumber;
  @override
  SeatRowZone get rowZone;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATION
  @override
  Vehicle? get vehicle;

  /// Create a copy of VehicleSeat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VehicleSeatImplCopyWith<_$VehicleSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
