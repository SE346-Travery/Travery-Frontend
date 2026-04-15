// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourInstance _$TourInstanceFromJson(Map<String, dynamic> json) {
  return _TourInstance.fromJson(json);
}

/// @nodoc
mixin _$TourInstance {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_id')
  String get tourId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_id')
  String? get vehicleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  String? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'guide_id')
  String? get guideId => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_by')
  String? get assignedBy => throw _privateConstructorUsedError;
  TourInstanceStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'postponement_reason')
  String? get postponementReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'postponed_at')
  DateTime? get postponedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'postponed_by')
  String? get postponedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancellation_reason')
  String? get cancellationReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_by')
  String? get cancelledBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
  List<TourBooking>? get bookings => throw _privateConstructorUsedError;

  /// Serializes this TourInstance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourInstanceCopyWith<TourInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourInstanceCopyWith<$Res> {
  factory $TourInstanceCopyWith(
    TourInstance value,
    $Res Function(TourInstance) then,
  ) = _$TourInstanceCopyWithImpl<$Res, TourInstance>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'tour_id') String tourId,
    @JsonKey(name: 'start_date') DateTime startDate,
    @JsonKey(name: 'end_date') DateTime endDate,
    @JsonKey(name: 'vehicle_id') String? vehicleId,
    @JsonKey(name: 'driver_id') String? driverId,
    @JsonKey(name: 'guide_id') String? guideId,
    @JsonKey(name: 'assigned_by') String? assignedBy,
    TourInstanceStatus status,
    @JsonKey(name: 'postponement_reason') String? postponementReason,
    @JsonKey(name: 'postponed_at') DateTime? postponedAt,
    @JsonKey(name: 'postponed_by') String? postponedBy,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<TourBooking>? bookings,
  });
}

/// @nodoc
class _$TourInstanceCopyWithImpl<$Res, $Val extends TourInstance>
    implements $TourInstanceCopyWith<$Res> {
  _$TourInstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tourId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? vehicleId = freezed,
    Object? driverId = freezed,
    Object? guideId = freezed,
    Object? assignedBy = freezed,
    Object? status = null,
    Object? postponementReason = freezed,
    Object? postponedAt = freezed,
    Object? postponedBy = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookings = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            tourId: null == tourId
                ? _value.tourId
                : tourId // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            vehicleId: freezed == vehicleId
                ? _value.vehicleId
                : vehicleId // ignore: cast_nullable_to_non_nullable
                      as String?,
            driverId: freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            guideId: freezed == guideId
                ? _value.guideId
                : guideId // ignore: cast_nullable_to_non_nullable
                      as String?,
            assignedBy: freezed == assignedBy
                ? _value.assignedBy
                : assignedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TourInstanceStatus,
            postponementReason: freezed == postponementReason
                ? _value.postponementReason
                : postponementReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            postponedAt: freezed == postponedAt
                ? _value.postponedAt
                : postponedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            postponedBy: freezed == postponedBy
                ? _value.postponedBy
                : postponedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancelledAt: freezed == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            cancellationReason: freezed == cancellationReason
                ? _value.cancellationReason
                : cancellationReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancelledBy: freezed == cancelledBy
                ? _value.cancelledBy
                : cancelledBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            bookings: freezed == bookings
                ? _value.bookings
                : bookings // ignore: cast_nullable_to_non_nullable
                      as List<TourBooking>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TourInstanceImplCopyWith<$Res>
    implements $TourInstanceCopyWith<$Res> {
  factory _$$TourInstanceImplCopyWith(
    _$TourInstanceImpl value,
    $Res Function(_$TourInstanceImpl) then,
  ) = __$$TourInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'tour_id') String tourId,
    @JsonKey(name: 'start_date') DateTime startDate,
    @JsonKey(name: 'end_date') DateTime endDate,
    @JsonKey(name: 'vehicle_id') String? vehicleId,
    @JsonKey(name: 'driver_id') String? driverId,
    @JsonKey(name: 'guide_id') String? guideId,
    @JsonKey(name: 'assigned_by') String? assignedBy,
    TourInstanceStatus status,
    @JsonKey(name: 'postponement_reason') String? postponementReason,
    @JsonKey(name: 'postponed_at') DateTime? postponedAt,
    @JsonKey(name: 'postponed_by') String? postponedBy,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<TourBooking>? bookings,
  });
}

/// @nodoc
class __$$TourInstanceImplCopyWithImpl<$Res>
    extends _$TourInstanceCopyWithImpl<$Res, _$TourInstanceImpl>
    implements _$$TourInstanceImplCopyWith<$Res> {
  __$$TourInstanceImplCopyWithImpl(
    _$TourInstanceImpl _value,
    $Res Function(_$TourInstanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tourId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? vehicleId = freezed,
    Object? driverId = freezed,
    Object? guideId = freezed,
    Object? assignedBy = freezed,
    Object? status = null,
    Object? postponementReason = freezed,
    Object? postponedAt = freezed,
    Object? postponedBy = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookings = freezed,
  }) {
    return _then(
      _$TourInstanceImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        tourId: null == tourId
            ? _value.tourId
            : tourId // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        vehicleId: freezed == vehicleId
            ? _value.vehicleId
            : vehicleId // ignore: cast_nullable_to_non_nullable
                  as String?,
        driverId: freezed == driverId
            ? _value.driverId
            : driverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        guideId: freezed == guideId
            ? _value.guideId
            : guideId // ignore: cast_nullable_to_non_nullable
                  as String?,
        assignedBy: freezed == assignedBy
            ? _value.assignedBy
            : assignedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TourInstanceStatus,
        postponementReason: freezed == postponementReason
            ? _value.postponementReason
            : postponementReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        postponedAt: freezed == postponedAt
            ? _value.postponedAt
            : postponedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        postponedBy: freezed == postponedBy
            ? _value.postponedBy
            : postponedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancelledAt: freezed == cancelledAt
            ? _value.cancelledAt
            : cancelledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cancellationReason: freezed == cancellationReason
            ? _value.cancellationReason
            : cancellationReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancelledBy: freezed == cancelledBy
            ? _value.cancelledBy
            : cancelledBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        bookings: freezed == bookings
            ? _value._bookings
            : bookings // ignore: cast_nullable_to_non_nullable
                  as List<TourBooking>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourInstanceImpl implements _TourInstance {
  const _$TourInstanceImpl({
    this.id,
    @JsonKey(name: 'tour_id') required this.tourId,
    @JsonKey(name: 'start_date') required this.startDate,
    @JsonKey(name: 'end_date') required this.endDate,
    @JsonKey(name: 'vehicle_id') this.vehicleId,
    @JsonKey(name: 'driver_id') this.driverId,
    @JsonKey(name: 'guide_id') this.guideId,
    @JsonKey(name: 'assigned_by') this.assignedBy,
    required this.status,
    @JsonKey(name: 'postponement_reason') this.postponementReason,
    @JsonKey(name: 'postponed_at') this.postponedAt,
    @JsonKey(name: 'postponed_by') this.postponedBy,
    @JsonKey(name: 'cancelled_at') this.cancelledAt,
    @JsonKey(name: 'cancellation_reason') this.cancellationReason,
    @JsonKey(name: 'cancelled_by') this.cancelledBy,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    final List<TourBooking>? bookings,
  }) : _bookings = bookings;

  factory _$TourInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourInstanceImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'tour_id')
  final String tourId;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;
  @override
  @JsonKey(name: 'vehicle_id')
  final String? vehicleId;
  @override
  @JsonKey(name: 'driver_id')
  final String? driverId;
  @override
  @JsonKey(name: 'guide_id')
  final String? guideId;
  @override
  @JsonKey(name: 'assigned_by')
  final String? assignedBy;
  @override
  final TourInstanceStatus status;
  @override
  @JsonKey(name: 'postponement_reason')
  final String? postponementReason;
  @override
  @JsonKey(name: 'postponed_at')
  final DateTime? postponedAt;
  @override
  @JsonKey(name: 'postponed_by')
  final String? postponedBy;
  @override
  @JsonKey(name: 'cancelled_at')
  final DateTime? cancelledAt;
  @override
  @JsonKey(name: 'cancellation_reason')
  final String? cancellationReason;
  @override
  @JsonKey(name: 'cancelled_by')
  final String? cancelledBy;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATIONS
  final List<TourBooking>? _bookings;

  /// RELATIONS
  @override
  List<TourBooking>? get bookings {
    final value = _bookings;
    if (value == null) return null;
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TourInstance(id: $id, tourId: $tourId, startDate: $startDate, endDate: $endDate, vehicleId: $vehicleId, driverId: $driverId, guideId: $guideId, assignedBy: $assignedBy, status: $status, postponementReason: $postponementReason, postponedAt: $postponedAt, postponedBy: $postponedBy, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, createdAt: $createdAt, updatedAt: $updatedAt, bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.guideId, guideId) || other.guideId == guideId) &&
            (identical(other.assignedBy, assignedBy) ||
                other.assignedBy == assignedBy) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.postponementReason, postponementReason) ||
                other.postponementReason == postponementReason) &&
            (identical(other.postponedAt, postponedAt) ||
                other.postponedAt == postponedAt) &&
            (identical(other.postponedBy, postponedBy) ||
                other.postponedBy == postponedBy) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    tourId,
    startDate,
    endDate,
    vehicleId,
    driverId,
    guideId,
    assignedBy,
    status,
    postponementReason,
    postponedAt,
    postponedBy,
    cancelledAt,
    cancellationReason,
    cancelledBy,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_bookings),
  );

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourInstanceImplCopyWith<_$TourInstanceImpl> get copyWith =>
      __$$TourInstanceImplCopyWithImpl<_$TourInstanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourInstanceImplToJson(this);
  }
}

abstract class _TourInstance implements TourInstance {
  const factory _TourInstance({
    final String? id,
    @JsonKey(name: 'tour_id') required final String tourId,
    @JsonKey(name: 'start_date') required final DateTime startDate,
    @JsonKey(name: 'end_date') required final DateTime endDate,
    @JsonKey(name: 'vehicle_id') final String? vehicleId,
    @JsonKey(name: 'driver_id') final String? driverId,
    @JsonKey(name: 'guide_id') final String? guideId,
    @JsonKey(name: 'assigned_by') final String? assignedBy,
    required final TourInstanceStatus status,
    @JsonKey(name: 'postponement_reason') final String? postponementReason,
    @JsonKey(name: 'postponed_at') final DateTime? postponedAt,
    @JsonKey(name: 'postponed_by') final String? postponedBy,
    @JsonKey(name: 'cancelled_at') final DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') final String? cancellationReason,
    @JsonKey(name: 'cancelled_by') final String? cancelledBy,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final List<TourBooking>? bookings,
  }) = _$TourInstanceImpl;

  factory _TourInstance.fromJson(Map<String, dynamic> json) =
      _$TourInstanceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'tour_id')
  String get tourId;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  @override
  @JsonKey(name: 'vehicle_id')
  String? get vehicleId;
  @override
  @JsonKey(name: 'driver_id')
  String? get driverId;
  @override
  @JsonKey(name: 'guide_id')
  String? get guideId;
  @override
  @JsonKey(name: 'assigned_by')
  String? get assignedBy;
  @override
  TourInstanceStatus get status;
  @override
  @JsonKey(name: 'postponement_reason')
  String? get postponementReason;
  @override
  @JsonKey(name: 'postponed_at')
  DateTime? get postponedAt;
  @override
  @JsonKey(name: 'postponed_by')
  String? get postponedBy;
  @override
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt;
  @override
  @JsonKey(name: 'cancellation_reason')
  String? get cancellationReason;
  @override
  @JsonKey(name: 'cancelled_by')
  String? get cancelledBy;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATIONS
  @override
  List<TourBooking>? get bookings;

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourInstanceImplCopyWith<_$TourInstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
