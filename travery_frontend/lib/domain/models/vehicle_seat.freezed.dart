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
  String get vehicleId => throw _privateConstructorUsedError;
  String get seatCode => throw _privateConstructorUsedError;
  int? get floorNumber => throw _privateConstructorUsedError;
  SeatRowZone get rowZone => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
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
    String vehicleId,
    String seatCode,
    int? floorNumber,
    SeatRowZone rowZone,
    bool isAvailable,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    String vehicleId,
    String seatCode,
    int? floorNumber,
    SeatRowZone rowZone,
    bool isAvailable,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    required this.vehicleId,
    required this.seatCode,
    this.floorNumber,
    required this.rowZone,
    this.isAvailable = true,
    this.createdAt,
    this.updatedAt,
    this.vehicle,
  });

  factory _$VehicleSeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleSeatImplFromJson(json);

  @override
  final String? id;
  @override
  final String vehicleId;
  @override
  final String seatCode;
  @override
  final int? floorNumber;
  @override
  final SeatRowZone rowZone;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
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
    required final String vehicleId,
    required final String seatCode,
    final int? floorNumber,
    required final SeatRowZone rowZone,
    final bool isAvailable,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Vehicle? vehicle,
  }) = _$VehicleSeatImpl;

  factory _VehicleSeat.fromJson(Map<String, dynamic> json) =
      _$VehicleSeatImpl.fromJson;

  @override
  String? get id;
  @override
  String get vehicleId;
  @override
  String get seatCode;
  @override
  int? get floorNumber;
  @override
  SeatRowZone get rowZone;
  @override
  bool get isAvailable;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Vehicle? get vehicle;

  /// Create a copy of VehicleSeat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VehicleSeatImplCopyWith<_$VehicleSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
