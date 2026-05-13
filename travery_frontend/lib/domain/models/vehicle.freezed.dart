// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
mixin _$Vehicle {
  String? get id => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;
  VehicleType get vehicleType => throw _privateConstructorUsedError;
  int get totalSeats => throw _privateConstructorUsedError;
  int? get floorCount => throw _privateConstructorUsedError;
  VehicleStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<VehicleSeat>? get seats => throw _privateConstructorUsedError;
  List<Driver>? get assignedDrivers => throw _privateConstructorUsedError;

  /// Serializes this Vehicle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call({
    String? id,
    String licensePlate,
    VehicleType vehicleType,
    int totalSeats,
    int? floorCount,
    VehicleStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<VehicleSeat>? seats,
    List<Driver>? assignedDrivers,
  });
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? licensePlate = null,
    Object? vehicleType = null,
    Object? totalSeats = null,
    Object? floorCount = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? seats = freezed,
    Object? assignedDrivers = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            licensePlate: null == licensePlate
                ? _value.licensePlate
                : licensePlate // ignore: cast_nullable_to_non_nullable
                      as String,
            vehicleType: null == vehicleType
                ? _value.vehicleType
                : vehicleType // ignore: cast_nullable_to_non_nullable
                      as VehicleType,
            totalSeats: null == totalSeats
                ? _value.totalSeats
                : totalSeats // ignore: cast_nullable_to_non_nullable
                      as int,
            floorCount: freezed == floorCount
                ? _value.floorCount
                : floorCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as VehicleStatus,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            seats: freezed == seats
                ? _value.seats
                : seats // ignore: cast_nullable_to_non_nullable
                      as List<VehicleSeat>?,
            assignedDrivers: freezed == assignedDrivers
                ? _value.assignedDrivers
                : assignedDrivers // ignore: cast_nullable_to_non_nullable
                      as List<Driver>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VehicleImplCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$VehicleImplCopyWith(
    _$VehicleImpl value,
    $Res Function(_$VehicleImpl) then,
  ) = __$$VehicleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String licensePlate,
    VehicleType vehicleType,
    int totalSeats,
    int? floorCount,
    VehicleStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<VehicleSeat>? seats,
    List<Driver>? assignedDrivers,
  });
}

/// @nodoc
class __$$VehicleImplCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$VehicleImpl>
    implements _$$VehicleImplCopyWith<$Res> {
  __$$VehicleImplCopyWithImpl(
    _$VehicleImpl _value,
    $Res Function(_$VehicleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? licensePlate = null,
    Object? vehicleType = null,
    Object? totalSeats = null,
    Object? floorCount = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? seats = freezed,
    Object? assignedDrivers = freezed,
  }) {
    return _then(
      _$VehicleImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        licensePlate: null == licensePlate
            ? _value.licensePlate
            : licensePlate // ignore: cast_nullable_to_non_nullable
                  as String,
        vehicleType: null == vehicleType
            ? _value.vehicleType
            : vehicleType // ignore: cast_nullable_to_non_nullable
                  as VehicleType,
        totalSeats: null == totalSeats
            ? _value.totalSeats
            : totalSeats // ignore: cast_nullable_to_non_nullable
                  as int,
        floorCount: freezed == floorCount
            ? _value.floorCount
            : floorCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as VehicleStatus,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        seats: freezed == seats
            ? _value._seats
            : seats // ignore: cast_nullable_to_non_nullable
                  as List<VehicleSeat>?,
        assignedDrivers: freezed == assignedDrivers
            ? _value._assignedDrivers
            : assignedDrivers // ignore: cast_nullable_to_non_nullable
                  as List<Driver>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleImpl implements _Vehicle {
  const _$VehicleImpl({
    this.id,
    required this.licensePlate,
    required this.vehicleType,
    required this.totalSeats,
    this.floorCount,
    required this.status,
    this.createdAt,
    this.updatedAt,
    final List<VehicleSeat>? seats,
    final List<Driver>? assignedDrivers,
  }) : _seats = seats,
       _assignedDrivers = assignedDrivers;

  factory _$VehicleImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleImplFromJson(json);

  @override
  final String? id;
  @override
  final String licensePlate;
  @override
  final VehicleType vehicleType;
  @override
  final int totalSeats;
  @override
  final int? floorCount;
  @override
  final VehicleStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final List<VehicleSeat>? _seats;
  @override
  List<VehicleSeat>? get seats {
    final value = _seats;
    if (value == null) return null;
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Driver>? _assignedDrivers;
  @override
  List<Driver>? get assignedDrivers {
    final value = _assignedDrivers;
    if (value == null) return null;
    if (_assignedDrivers is EqualUnmodifiableListView) return _assignedDrivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Vehicle(id: $id, licensePlate: $licensePlate, vehicleType: $vehicleType, totalSeats: $totalSeats, floorCount: $floorCount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, seats: $seats, assignedDrivers: $assignedDrivers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.totalSeats, totalSeats) ||
                other.totalSeats == totalSeats) &&
            (identical(other.floorCount, floorCount) ||
                other.floorCount == floorCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._seats, _seats) &&
            const DeepCollectionEquality().equals(
              other._assignedDrivers,
              _assignedDrivers,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    licensePlate,
    vehicleType,
    totalSeats,
    floorCount,
    status,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_seats),
    const DeepCollectionEquality().hash(_assignedDrivers),
  );

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      __$$VehicleImplCopyWithImpl<_$VehicleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleImplToJson(this);
  }
}

abstract class _Vehicle implements Vehicle {
  const factory _Vehicle({
    final String? id,
    required final String licensePlate,
    required final VehicleType vehicleType,
    required final int totalSeats,
    final int? floorCount,
    required final VehicleStatus status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final List<VehicleSeat>? seats,
    final List<Driver>? assignedDrivers,
  }) = _$VehicleImpl;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$VehicleImpl.fromJson;

  @override
  String? get id;
  @override
  String get licensePlate;
  @override
  VehicleType get vehicleType;
  @override
  int get totalSeats;
  @override
  int? get floorCount;
  @override
  VehicleStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<VehicleSeat>? get seats;
  @override
  List<Driver>? get assignedDrivers;

  /// Create a copy of Vehicle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
