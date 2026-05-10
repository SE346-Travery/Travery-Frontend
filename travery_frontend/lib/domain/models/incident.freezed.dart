// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incident.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Incident _$IncidentFromJson(Map<String, dynamic> json) {
  return _Incident.fromJson(json);
}

/// @nodoc
mixin _$Incident {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_id')
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_type')
  String? get bookingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'reported_by_user_id')
  String? get reportedByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reported_by_staff_id')
  String? get reportedByStaffId => throw _privateConstructorUsedError;
  IncidentType get type => throw _privateConstructorUsedError;
  IncidentSeverity get severity => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String>? get imageUrls => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'resolved_at')
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'resolution_notes')
  String? get resolutionNotes => throw _privateConstructorUsedError;
  IncidentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'reported_at')
  DateTime? get reportedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
  User? get reportedByUser => throw _privateConstructorUsedError;
  User? get reportedByStaff => throw _privateConstructorUsedError;
  TourBooking? get tourBooking => throw _privateConstructorUsedError;
  HotelBooking? get hotelBooking => throw _privateConstructorUsedError;

  /// Serializes this Incident to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncidentCopyWith<Incident> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncidentCopyWith<$Res> {
  factory $IncidentCopyWith(Incident value, $Res Function(Incident) then) =
      _$IncidentCopyWithImpl<$Res, Incident>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'booking_id') String? bookingId,
    @JsonKey(name: 'booking_type') String? bookingType,
    @JsonKey(name: 'reported_by_user_id') String? reportedByUserId,
    @JsonKey(name: 'reported_by_staff_id') String? reportedByStaffId,
    IncidentType type,
    IncidentSeverity severity,
    String? description,
    @JsonKey(name: 'image_urls') List<String>? imageUrls,
    String? location,
    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,
    @JsonKey(name: 'resolution_notes') String? resolutionNotes,
    IncidentStatus status,
    @JsonKey(name: 'reported_at') DateTime? reportedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    User? reportedByUser,
    User? reportedByStaff,
    TourBooking? tourBooking,
    HotelBooking? hotelBooking,
  });

  $UserCopyWith<$Res>? get reportedByUser;
  $UserCopyWith<$Res>? get reportedByStaff;
  $TourBookingCopyWith<$Res>? get tourBooking;
  $HotelBookingCopyWith<$Res>? get hotelBooking;
}

/// @nodoc
class _$IncidentCopyWithImpl<$Res, $Val extends Incident>
    implements $IncidentCopyWith<$Res> {
  _$IncidentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? bookingType = freezed,
    Object? reportedByUserId = freezed,
    Object? reportedByStaffId = freezed,
    Object? type = null,
    Object? severity = null,
    Object? description = freezed,
    Object? imageUrls = freezed,
    Object? location = freezed,
    Object? resolvedAt = freezed,
    Object? resolutionNotes = freezed,
    Object? status = null,
    Object? reportedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? reportedByUser = freezed,
    Object? reportedByStaff = freezed,
    Object? tourBooking = freezed,
    Object? hotelBooking = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            bookingId: freezed == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            bookingType: freezed == bookingType
                ? _value.bookingType
                : bookingType // ignore: cast_nullable_to_non_nullable
                      as String?,
            reportedByUserId: freezed == reportedByUserId
                ? _value.reportedByUserId
                : reportedByUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
            reportedByStaffId: freezed == reportedByStaffId
                ? _value.reportedByStaffId
                : reportedByStaffId // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as IncidentType,
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as IncidentSeverity,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrls: freezed == imageUrls
                ? _value.imageUrls
                : imageUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            resolvedAt: freezed == resolvedAt
                ? _value.resolvedAt
                : resolvedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            resolutionNotes: freezed == resolutionNotes
                ? _value.resolutionNotes
                : resolutionNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as IncidentStatus,
            reportedAt: freezed == reportedAt
                ? _value.reportedAt
                : reportedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            reportedByUser: freezed == reportedByUser
                ? _value.reportedByUser
                : reportedByUser // ignore: cast_nullable_to_non_nullable
                      as User?,
            reportedByStaff: freezed == reportedByStaff
                ? _value.reportedByStaff
                : reportedByStaff // ignore: cast_nullable_to_non_nullable
                      as User?,
            tourBooking: freezed == tourBooking
                ? _value.tourBooking
                : tourBooking // ignore: cast_nullable_to_non_nullable
                      as TourBooking?,
            hotelBooking: freezed == hotelBooking
                ? _value.hotelBooking
                : hotelBooking // ignore: cast_nullable_to_non_nullable
                      as HotelBooking?,
          )
          as $Val,
    );
  }

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get reportedByUser {
    if (_value.reportedByUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.reportedByUser!, (value) {
      return _then(_value.copyWith(reportedByUser: value) as $Val);
    });
  }

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get reportedByStaff {
    if (_value.reportedByStaff == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.reportedByStaff!, (value) {
      return _then(_value.copyWith(reportedByStaff: value) as $Val);
    });
  }

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourBookingCopyWith<$Res>? get tourBooking {
    if (_value.tourBooking == null) {
      return null;
    }

    return $TourBookingCopyWith<$Res>(_value.tourBooking!, (value) {
      return _then(_value.copyWith(tourBooking: value) as $Val);
    });
  }

  /// Create a copy of Incident
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
abstract class _$$IncidentImplCopyWith<$Res>
    implements $IncidentCopyWith<$Res> {
  factory _$$IncidentImplCopyWith(
    _$IncidentImpl value,
    $Res Function(_$IncidentImpl) then,
  ) = __$$IncidentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'booking_id') String? bookingId,
    @JsonKey(name: 'booking_type') String? bookingType,
    @JsonKey(name: 'reported_by_user_id') String? reportedByUserId,
    @JsonKey(name: 'reported_by_staff_id') String? reportedByStaffId,
    IncidentType type,
    IncidentSeverity severity,
    String? description,
    @JsonKey(name: 'image_urls') List<String>? imageUrls,
    String? location,
    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,
    @JsonKey(name: 'resolution_notes') String? resolutionNotes,
    IncidentStatus status,
    @JsonKey(name: 'reported_at') DateTime? reportedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    User? reportedByUser,
    User? reportedByStaff,
    TourBooking? tourBooking,
    HotelBooking? hotelBooking,
  });

  @override
  $UserCopyWith<$Res>? get reportedByUser;
  @override
  $UserCopyWith<$Res>? get reportedByStaff;
  @override
  $TourBookingCopyWith<$Res>? get tourBooking;
  @override
  $HotelBookingCopyWith<$Res>? get hotelBooking;
}

/// @nodoc
class __$$IncidentImplCopyWithImpl<$Res>
    extends _$IncidentCopyWithImpl<$Res, _$IncidentImpl>
    implements _$$IncidentImplCopyWith<$Res> {
  __$$IncidentImplCopyWithImpl(
    _$IncidentImpl _value,
    $Res Function(_$IncidentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? bookingType = freezed,
    Object? reportedByUserId = freezed,
    Object? reportedByStaffId = freezed,
    Object? type = null,
    Object? severity = null,
    Object? description = freezed,
    Object? imageUrls = freezed,
    Object? location = freezed,
    Object? resolvedAt = freezed,
    Object? resolutionNotes = freezed,
    Object? status = null,
    Object? reportedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? reportedByUser = freezed,
    Object? reportedByStaff = freezed,
    Object? tourBooking = freezed,
    Object? hotelBooking = freezed,
  }) {
    return _then(
      _$IncidentImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        bookingId: freezed == bookingId
            ? _value.bookingId
            : bookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        bookingType: freezed == bookingType
            ? _value.bookingType
            : bookingType // ignore: cast_nullable_to_non_nullable
                  as String?,
        reportedByUserId: freezed == reportedByUserId
            ? _value.reportedByUserId
            : reportedByUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
        reportedByStaffId: freezed == reportedByStaffId
            ? _value.reportedByStaffId
            : reportedByStaffId // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as IncidentType,
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as IncidentSeverity,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrls: freezed == imageUrls
            ? _value._imageUrls
            : imageUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        resolvedAt: freezed == resolvedAt
            ? _value.resolvedAt
            : resolvedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        resolutionNotes: freezed == resolutionNotes
            ? _value.resolutionNotes
            : resolutionNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as IncidentStatus,
        reportedAt: freezed == reportedAt
            ? _value.reportedAt
            : reportedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        reportedByUser: freezed == reportedByUser
            ? _value.reportedByUser
            : reportedByUser // ignore: cast_nullable_to_non_nullable
                  as User?,
        reportedByStaff: freezed == reportedByStaff
            ? _value.reportedByStaff
            : reportedByStaff // ignore: cast_nullable_to_non_nullable
                  as User?,
        tourBooking: freezed == tourBooking
            ? _value.tourBooking
            : tourBooking // ignore: cast_nullable_to_non_nullable
                  as TourBooking?,
        hotelBooking: freezed == hotelBooking
            ? _value.hotelBooking
            : hotelBooking // ignore: cast_nullable_to_non_nullable
                  as HotelBooking?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IncidentImpl implements _Incident {
  const _$IncidentImpl({
    this.id,
    @JsonKey(name: 'booking_id') this.bookingId,
    @JsonKey(name: 'booking_type') this.bookingType,
    @JsonKey(name: 'reported_by_user_id') this.reportedByUserId,
    @JsonKey(name: 'reported_by_staff_id') this.reportedByStaffId,
    required this.type,
    required this.severity,
    this.description,
    @JsonKey(name: 'image_urls') final List<String>? imageUrls,
    this.location,
    @JsonKey(name: 'resolved_at') this.resolvedAt,
    @JsonKey(name: 'resolution_notes') this.resolutionNotes,
    required this.status,
    @JsonKey(name: 'reported_at') this.reportedAt,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.reportedByUser,
    this.reportedByStaff,
    this.tourBooking,
    this.hotelBooking,
  }) : _imageUrls = imageUrls;

  factory _$IncidentImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncidentImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'booking_id')
  final String? bookingId;
  @override
  @JsonKey(name: 'booking_type')
  final String? bookingType;
  @override
  @JsonKey(name: 'reported_by_user_id')
  final String? reportedByUserId;
  @override
  @JsonKey(name: 'reported_by_staff_id')
  final String? reportedByStaffId;
  @override
  final IncidentType type;
  @override
  final IncidentSeverity severity;
  @override
  final String? description;
  final List<String>? _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? location;
  @override
  @JsonKey(name: 'resolved_at')
  final DateTime? resolvedAt;
  @override
  @JsonKey(name: 'resolution_notes')
  final String? resolutionNotes;
  @override
  final IncidentStatus status;
  @override
  @JsonKey(name: 'reported_at')
  final DateTime? reportedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATIONS
  @override
  final User? reportedByUser;
  @override
  final User? reportedByStaff;
  @override
  final TourBooking? tourBooking;
  @override
  final HotelBooking? hotelBooking;

  @override
  String toString() {
    return 'Incident(id: $id, bookingId: $bookingId, bookingType: $bookingType, reportedByUserId: $reportedByUserId, reportedByStaffId: $reportedByStaffId, type: $type, severity: $severity, description: $description, imageUrls: $imageUrls, location: $location, resolvedAt: $resolvedAt, resolutionNotes: $resolutionNotes, status: $status, reportedAt: $reportedAt, createdAt: $createdAt, updatedAt: $updatedAt, reportedByUser: $reportedByUser, reportedByStaff: $reportedByStaff, tourBooking: $tourBooking, hotelBooking: $hotelBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncidentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.reportedByUserId, reportedByUserId) ||
                other.reportedByUserId == reportedByUserId) &&
            (identical(other.reportedByStaffId, reportedByStaffId) ||
                other.reportedByStaffId == reportedByStaffId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._imageUrls,
              _imageUrls,
            ) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.resolutionNotes, resolutionNotes) ||
                other.resolutionNotes == resolutionNotes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.reportedByUser, reportedByUser) ||
                other.reportedByUser == reportedByUser) &&
            (identical(other.reportedByStaff, reportedByStaff) ||
                other.reportedByStaff == reportedByStaff) &&
            (identical(other.tourBooking, tourBooking) ||
                other.tourBooking == tourBooking) &&
            (identical(other.hotelBooking, hotelBooking) ||
                other.hotelBooking == hotelBooking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    bookingId,
    bookingType,
    reportedByUserId,
    reportedByStaffId,
    type,
    severity,
    description,
    const DeepCollectionEquality().hash(_imageUrls),
    location,
    resolvedAt,
    resolutionNotes,
    status,
    reportedAt,
    createdAt,
    updatedAt,
    reportedByUser,
    reportedByStaff,
    tourBooking,
    hotelBooking,
  ]);

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncidentImplCopyWith<_$IncidentImpl> get copyWith =>
      __$$IncidentImplCopyWithImpl<_$IncidentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncidentImplToJson(this);
  }
}

abstract class _Incident implements Incident {
  const factory _Incident({
    final String? id,
    @JsonKey(name: 'booking_id') final String? bookingId,
    @JsonKey(name: 'booking_type') final String? bookingType,
    @JsonKey(name: 'reported_by_user_id') final String? reportedByUserId,
    @JsonKey(name: 'reported_by_staff_id') final String? reportedByStaffId,
    required final IncidentType type,
    required final IncidentSeverity severity,
    final String? description,
    @JsonKey(name: 'image_urls') final List<String>? imageUrls,
    final String? location,
    @JsonKey(name: 'resolved_at') final DateTime? resolvedAt,
    @JsonKey(name: 'resolution_notes') final String? resolutionNotes,
    required final IncidentStatus status,
    @JsonKey(name: 'reported_at') final DateTime? reportedAt,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final User? reportedByUser,
    final User? reportedByStaff,
    final TourBooking? tourBooking,
    final HotelBooking? hotelBooking,
  }) = _$IncidentImpl;

  factory _Incident.fromJson(Map<String, dynamic> json) =
      _$IncidentImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'booking_id')
  String? get bookingId;
  @override
  @JsonKey(name: 'booking_type')
  String? get bookingType;
  @override
  @JsonKey(name: 'reported_by_user_id')
  String? get reportedByUserId;
  @override
  @JsonKey(name: 'reported_by_staff_id')
  String? get reportedByStaffId;
  @override
  IncidentType get type;
  @override
  IncidentSeverity get severity;
  @override
  String? get description;
  @override
  @JsonKey(name: 'image_urls')
  List<String>? get imageUrls;
  @override
  String? get location;
  @override
  @JsonKey(name: 'resolved_at')
  DateTime? get resolvedAt;
  @override
  @JsonKey(name: 'resolution_notes')
  String? get resolutionNotes;
  @override
  IncidentStatus get status;
  @override
  @JsonKey(name: 'reported_at')
  DateTime? get reportedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATIONS
  @override
  User? get reportedByUser;
  @override
  User? get reportedByStaff;
  @override
  TourBooking? get tourBooking;
  @override
  HotelBooking? get hotelBooking;

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncidentImplCopyWith<_$IncidentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
