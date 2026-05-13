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
  String get tourId => throw _privateConstructorUsedError;
  String? get coordinatorId => throw _privateConstructorUsedError;
  String? get guideId => throw _privateConstructorUsedError;
  String? get coachId => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  String? get hotelBookingId => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  int get minParticipants => throw _privateConstructorUsedError;
  int get maxParticipants => throw _privateConstructorUsedError;
  int get currentParticipants => throw _privateConstructorUsedError;
  TourInstanceStatus get status => throw _privateConstructorUsedError;
  String? get postponementReason => throw _privateConstructorUsedError;
  DateTime? get postponedAt => throw _privateConstructorUsedError;
  String? get postponedBy => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Tour? get tour => throw _privateConstructorUsedError;
  User? get coordinator => throw _privateConstructorUsedError;
  User? get guide => throw _privateConstructorUsedError;
  Coach? get coach => throw _privateConstructorUsedError;
  Driver? get driver => throw _privateConstructorUsedError;
  HotelBooking? get hotelBooking => throw _privateConstructorUsedError;
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
    String tourId,
    String? coordinatorId,
    String? guideId,
    String? coachId,
    String? driverId,
    String? hotelBookingId,
    DateTime startDate,
    DateTime endDate,
    int minParticipants,
    int maxParticipants,
    int currentParticipants,
    TourInstanceStatus status,
    String? postponementReason,
    DateTime? postponedAt,
    String? postponedBy,
    DateTime? cancelledAt,
    String? cancellationReason,
    String? cancelledBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    Tour? tour,
    User? coordinator,
    User? guide,
    Coach? coach,
    Driver? driver,
    HotelBooking? hotelBooking,
    List<TourBooking>? bookings,
  });

  $TourCopyWith<$Res>? get tour;
  $UserCopyWith<$Res>? get coordinator;
  $UserCopyWith<$Res>? get guide;
  $CoachCopyWith<$Res>? get coach;
  $DriverCopyWith<$Res>? get driver;
  $HotelBookingCopyWith<$Res>? get hotelBooking;
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
    Object? coordinatorId = freezed,
    Object? guideId = freezed,
    Object? coachId = freezed,
    Object? driverId = freezed,
    Object? hotelBookingId = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? minParticipants = null,
    Object? maxParticipants = null,
    Object? currentParticipants = null,
    Object? status = null,
    Object? postponementReason = freezed,
    Object? postponedAt = freezed,
    Object? postponedBy = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tour = freezed,
    Object? coordinator = freezed,
    Object? guide = freezed,
    Object? coach = freezed,
    Object? driver = freezed,
    Object? hotelBooking = freezed,
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
            coordinatorId: freezed == coordinatorId
                ? _value.coordinatorId
                : coordinatorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            guideId: freezed == guideId
                ? _value.guideId
                : guideId // ignore: cast_nullable_to_non_nullable
                      as String?,
            coachId: freezed == coachId
                ? _value.coachId
                : coachId // ignore: cast_nullable_to_non_nullable
                      as String?,
            driverId: freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingId: freezed == hotelBookingId
                ? _value.hotelBookingId
                : hotelBookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            minParticipants: null == minParticipants
                ? _value.minParticipants
                : minParticipants // ignore: cast_nullable_to_non_nullable
                      as int,
            maxParticipants: null == maxParticipants
                ? _value.maxParticipants
                : maxParticipants // ignore: cast_nullable_to_non_nullable
                      as int,
            currentParticipants: null == currentParticipants
                ? _value.currentParticipants
                : currentParticipants // ignore: cast_nullable_to_non_nullable
                      as int,
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
            tour: freezed == tour
                ? _value.tour
                : tour // ignore: cast_nullable_to_non_nullable
                      as Tour?,
            coordinator: freezed == coordinator
                ? _value.coordinator
                : coordinator // ignore: cast_nullable_to_non_nullable
                      as User?,
            guide: freezed == guide
                ? _value.guide
                : guide // ignore: cast_nullable_to_non_nullable
                      as User?,
            coach: freezed == coach
                ? _value.coach
                : coach // ignore: cast_nullable_to_non_nullable
                      as Coach?,
            driver: freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                      as Driver?,
            hotelBooking: freezed == hotelBooking
                ? _value.hotelBooking
                : hotelBooking // ignore: cast_nullable_to_non_nullable
                      as HotelBooking?,
            bookings: freezed == bookings
                ? _value.bookings
                : bookings // ignore: cast_nullable_to_non_nullable
                      as List<TourBooking>?,
          )
          as $Val,
    );
  }

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourCopyWith<$Res>? get tour {
    if (_value.tour == null) {
      return null;
    }

    return $TourCopyWith<$Res>(_value.tour!, (value) {
      return _then(_value.copyWith(tour: value) as $Val);
    });
  }

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get coordinator {
    if (_value.coordinator == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.coordinator!, (value) {
      return _then(_value.copyWith(coordinator: value) as $Val);
    });
  }

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get guide {
    if (_value.guide == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.guide!, (value) {
      return _then(_value.copyWith(guide: value) as $Val);
    });
  }

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachCopyWith<$Res>? get coach {
    if (_value.coach == null) {
      return null;
    }

    return $CoachCopyWith<$Res>(_value.coach!, (value) {
      return _then(_value.copyWith(coach: value) as $Val);
    });
  }

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelBookingCopyWith<$Res>? get hotelBooking {
    if (_value.hotelBooking == null) {
      return null;
    }

    return $HotelBookingCopyWith<$Res>(_value.hotelBooking!, (value) {
      return _then(_value.copyWith(hotelBooking: value) as $Val);
    });
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
    String tourId,
    String? coordinatorId,
    String? guideId,
    String? coachId,
    String? driverId,
    String? hotelBookingId,
    DateTime startDate,
    DateTime endDate,
    int minParticipants,
    int maxParticipants,
    int currentParticipants,
    TourInstanceStatus status,
    String? postponementReason,
    DateTime? postponedAt,
    String? postponedBy,
    DateTime? cancelledAt,
    String? cancellationReason,
    String? cancelledBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    Tour? tour,
    User? coordinator,
    User? guide,
    Coach? coach,
    Driver? driver,
    HotelBooking? hotelBooking,
    List<TourBooking>? bookings,
  });

  @override
  $TourCopyWith<$Res>? get tour;
  @override
  $UserCopyWith<$Res>? get coordinator;
  @override
  $UserCopyWith<$Res>? get guide;
  @override
  $CoachCopyWith<$Res>? get coach;
  @override
  $DriverCopyWith<$Res>? get driver;
  @override
  $HotelBookingCopyWith<$Res>? get hotelBooking;
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
    Object? coordinatorId = freezed,
    Object? guideId = freezed,
    Object? coachId = freezed,
    Object? driverId = freezed,
    Object? hotelBookingId = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? minParticipants = null,
    Object? maxParticipants = null,
    Object? currentParticipants = null,
    Object? status = null,
    Object? postponementReason = freezed,
    Object? postponedAt = freezed,
    Object? postponedBy = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tour = freezed,
    Object? coordinator = freezed,
    Object? guide = freezed,
    Object? coach = freezed,
    Object? driver = freezed,
    Object? hotelBooking = freezed,
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
        coordinatorId: freezed == coordinatorId
            ? _value.coordinatorId
            : coordinatorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        guideId: freezed == guideId
            ? _value.guideId
            : guideId // ignore: cast_nullable_to_non_nullable
                  as String?,
        coachId: freezed == coachId
            ? _value.coachId
            : coachId // ignore: cast_nullable_to_non_nullable
                  as String?,
        driverId: freezed == driverId
            ? _value.driverId
            : driverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: freezed == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        minParticipants: null == minParticipants
            ? _value.minParticipants
            : minParticipants // ignore: cast_nullable_to_non_nullable
                  as int,
        maxParticipants: null == maxParticipants
            ? _value.maxParticipants
            : maxParticipants // ignore: cast_nullable_to_non_nullable
                  as int,
        currentParticipants: null == currentParticipants
            ? _value.currentParticipants
            : currentParticipants // ignore: cast_nullable_to_non_nullable
                  as int,
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
        tour: freezed == tour
            ? _value.tour
            : tour // ignore: cast_nullable_to_non_nullable
                  as Tour?,
        coordinator: freezed == coordinator
            ? _value.coordinator
            : coordinator // ignore: cast_nullable_to_non_nullable
                  as User?,
        guide: freezed == guide
            ? _value.guide
            : guide // ignore: cast_nullable_to_non_nullable
                  as User?,
        coach: freezed == coach
            ? _value.coach
            : coach // ignore: cast_nullable_to_non_nullable
                  as Coach?,
        driver: freezed == driver
            ? _value.driver
            : driver // ignore: cast_nullable_to_non_nullable
                  as Driver?,
        hotelBooking: freezed == hotelBooking
            ? _value.hotelBooking
            : hotelBooking // ignore: cast_nullable_to_non_nullable
                  as HotelBooking?,
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
    required this.tourId,
    this.coordinatorId,
    this.guideId,
    this.coachId,
    this.driverId,
    this.hotelBookingId,
    required this.startDate,
    required this.endDate,
    this.minParticipants = 10,
    this.maxParticipants = 30,
    this.currentParticipants = 0,
    required this.status,
    this.postponementReason,
    this.postponedAt,
    this.postponedBy,
    this.cancelledAt,
    this.cancellationReason,
    this.cancelledBy,
    this.createdAt,
    this.updatedAt,
    this.tour,
    this.coordinator,
    this.guide,
    this.coach,
    this.driver,
    this.hotelBooking,
    final List<TourBooking>? bookings,
  }) : _bookings = bookings;

  factory _$TourInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourInstanceImplFromJson(json);

  @override
  final String? id;
  @override
  final String tourId;
  @override
  final String? coordinatorId;
  @override
  final String? guideId;
  @override
  final String? coachId;
  @override
  final String? driverId;
  @override
  final String? hotelBookingId;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  @JsonKey()
  final int minParticipants;
  @override
  @JsonKey()
  final int maxParticipants;
  @override
  @JsonKey()
  final int currentParticipants;
  @override
  final TourInstanceStatus status;
  @override
  final String? postponementReason;
  @override
  final DateTime? postponedAt;
  @override
  final String? postponedBy;
  @override
  final DateTime? cancelledAt;
  @override
  final String? cancellationReason;
  @override
  final String? cancelledBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Tour? tour;
  @override
  final User? coordinator;
  @override
  final User? guide;
  @override
  final Coach? coach;
  @override
  final Driver? driver;
  @override
  final HotelBooking? hotelBooking;
  final List<TourBooking>? _bookings;
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
    return 'TourInstance(id: $id, tourId: $tourId, coordinatorId: $coordinatorId, guideId: $guideId, coachId: $coachId, driverId: $driverId, hotelBookingId: $hotelBookingId, startDate: $startDate, endDate: $endDate, minParticipants: $minParticipants, maxParticipants: $maxParticipants, currentParticipants: $currentParticipants, status: $status, postponementReason: $postponementReason, postponedAt: $postponedAt, postponedBy: $postponedBy, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, createdAt: $createdAt, updatedAt: $updatedAt, tour: $tour, coordinator: $coordinator, guide: $guide, coach: $coach, driver: $driver, hotelBooking: $hotelBooking, bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.coordinatorId, coordinatorId) ||
                other.coordinatorId == coordinatorId) &&
            (identical(other.guideId, guideId) || other.guideId == guideId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.minParticipants, minParticipants) ||
                other.minParticipants == minParticipants) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.currentParticipants, currentParticipants) ||
                other.currentParticipants == currentParticipants) &&
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
            (identical(other.tour, tour) || other.tour == tour) &&
            (identical(other.coordinator, coordinator) ||
                other.coordinator == coordinator) &&
            (identical(other.guide, guide) || other.guide == guide) &&
            (identical(other.coach, coach) || other.coach == coach) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.hotelBooking, hotelBooking) ||
                other.hotelBooking == hotelBooking) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    tourId,
    coordinatorId,
    guideId,
    coachId,
    driverId,
    hotelBookingId,
    startDate,
    endDate,
    minParticipants,
    maxParticipants,
    currentParticipants,
    status,
    postponementReason,
    postponedAt,
    postponedBy,
    cancelledAt,
    cancellationReason,
    cancelledBy,
    createdAt,
    updatedAt,
    tour,
    coordinator,
    guide,
    coach,
    driver,
    hotelBooking,
    const DeepCollectionEquality().hash(_bookings),
  ]);

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
    required final String tourId,
    final String? coordinatorId,
    final String? guideId,
    final String? coachId,
    final String? driverId,
    final String? hotelBookingId,
    required final DateTime startDate,
    required final DateTime endDate,
    final int minParticipants,
    final int maxParticipants,
    final int currentParticipants,
    required final TourInstanceStatus status,
    final String? postponementReason,
    final DateTime? postponedAt,
    final String? postponedBy,
    final DateTime? cancelledAt,
    final String? cancellationReason,
    final String? cancelledBy,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Tour? tour,
    final User? coordinator,
    final User? guide,
    final Coach? coach,
    final Driver? driver,
    final HotelBooking? hotelBooking,
    final List<TourBooking>? bookings,
  }) = _$TourInstanceImpl;

  factory _TourInstance.fromJson(Map<String, dynamic> json) =
      _$TourInstanceImpl.fromJson;

  @override
  String? get id;
  @override
  String get tourId;
  @override
  String? get coordinatorId;
  @override
  String? get guideId;
  @override
  String? get coachId;
  @override
  String? get driverId;
  @override
  String? get hotelBookingId;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  int get minParticipants;
  @override
  int get maxParticipants;
  @override
  int get currentParticipants;
  @override
  TourInstanceStatus get status;
  @override
  String? get postponementReason;
  @override
  DateTime? get postponedAt;
  @override
  String? get postponedBy;
  @override
  DateTime? get cancelledAt;
  @override
  String? get cancellationReason;
  @override
  String? get cancelledBy;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Tour? get tour;
  @override
  User? get coordinator;
  @override
  User? get guide;
  @override
  Coach? get coach;
  @override
  Driver? get driver;
  @override
  HotelBooking? get hotelBooking;
  @override
  List<TourBooking>? get bookings;

  /// Create a copy of TourInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourInstanceImplCopyWith<_$TourInstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
