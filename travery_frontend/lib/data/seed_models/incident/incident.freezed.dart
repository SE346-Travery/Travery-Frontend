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
  @JsonKey(name: 'handled_by')
  String? get handledBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_booking_id')
  String? get tourBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coach_booking_id')
  String? get coachBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_booking_id')
  String? get hotelBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reported_by_user_id')
  String? get reportedByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reported_by_staff_id')
  String? get reportedByStaffId => throw _privateConstructorUsedError;
  IncidentType get type => throw _privateConstructorUsedError;
  IncidentSeverity get severity => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  IncidentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'reported_at')
  DateTime? get reportedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'resolved_at')
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'resolution_notes')
  String? get resolutionNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'handled_by') String? handledBy,
    @JsonKey(name: 'tour_booking_id') String? tourBookingId,
    @JsonKey(name: 'coach_booking_id') String? coachBookingId,
    @JsonKey(name: 'hotel_booking_id') String? hotelBookingId,
    @JsonKey(name: 'reported_by_user_id') String? reportedByUserId,
    @JsonKey(name: 'reported_by_staff_id') String? reportedByStaffId,
    IncidentType type,
    IncidentSeverity severity,
    String? description,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? location,
    IncidentStatus status,
    @JsonKey(name: 'reported_at') DateTime? reportedAt,
    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,
    @JsonKey(name: 'resolution_notes') String? resolutionNotes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
    Object? handledBy = freezed,
    Object? tourBookingId = freezed,
    Object? coachBookingId = freezed,
    Object? hotelBookingId = freezed,
    Object? reportedByUserId = freezed,
    Object? reportedByStaffId = freezed,
    Object? type = null,
    Object? severity = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? location = freezed,
    Object? status = null,
    Object? reportedAt = freezed,
    Object? resolvedAt = freezed,
    Object? resolutionNotes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            handledBy: freezed == handledBy
                ? _value.handledBy
                : handledBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            tourBookingId: freezed == tourBookingId
                ? _value.tourBookingId
                : tourBookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            coachBookingId: freezed == coachBookingId
                ? _value.coachBookingId
                : coachBookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingId: freezed == hotelBookingId
                ? _value.hotelBookingId
                : hotelBookingId // ignore: cast_nullable_to_non_nullable
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
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as IncidentStatus,
            reportedAt: freezed == reportedAt
                ? _value.reportedAt
                : reportedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            resolvedAt: freezed == resolvedAt
                ? _value.resolvedAt
                : resolvedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            resolutionNotes: freezed == resolutionNotes
                ? _value.resolutionNotes
                : resolutionNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
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
    @JsonKey(name: 'handled_by') String? handledBy,
    @JsonKey(name: 'tour_booking_id') String? tourBookingId,
    @JsonKey(name: 'coach_booking_id') String? coachBookingId,
    @JsonKey(name: 'hotel_booking_id') String? hotelBookingId,
    @JsonKey(name: 'reported_by_user_id') String? reportedByUserId,
    @JsonKey(name: 'reported_by_staff_id') String? reportedByStaffId,
    IncidentType type,
    IncidentSeverity severity,
    String? description,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? location,
    IncidentStatus status,
    @JsonKey(name: 'reported_at') DateTime? reportedAt,
    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,
    @JsonKey(name: 'resolution_notes') String? resolutionNotes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
    Object? handledBy = freezed,
    Object? tourBookingId = freezed,
    Object? coachBookingId = freezed,
    Object? hotelBookingId = freezed,
    Object? reportedByUserId = freezed,
    Object? reportedByStaffId = freezed,
    Object? type = null,
    Object? severity = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? location = freezed,
    Object? status = null,
    Object? reportedAt = freezed,
    Object? resolvedAt = freezed,
    Object? resolutionNotes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$IncidentImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        handledBy: freezed == handledBy
            ? _value.handledBy
            : handledBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        tourBookingId: freezed == tourBookingId
            ? _value.tourBookingId
            : tourBookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        coachBookingId: freezed == coachBookingId
            ? _value.coachBookingId
            : coachBookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: freezed == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
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
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as IncidentStatus,
        reportedAt: freezed == reportedAt
            ? _value.reportedAt
            : reportedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        resolvedAt: freezed == resolvedAt
            ? _value.resolvedAt
            : resolvedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        resolutionNotes: freezed == resolutionNotes
            ? _value.resolutionNotes
            : resolutionNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IncidentImpl implements _Incident {
  const _$IncidentImpl({
    this.id,
    @JsonKey(name: 'handled_by') this.handledBy,
    @JsonKey(name: 'tour_booking_id') this.tourBookingId,
    @JsonKey(name: 'coach_booking_id') this.coachBookingId,
    @JsonKey(name: 'hotel_booking_id') this.hotelBookingId,
    @JsonKey(name: 'reported_by_user_id') this.reportedByUserId,
    @JsonKey(name: 'reported_by_staff_id') this.reportedByStaffId,
    required this.type,
    required this.severity,
    this.description,
    @JsonKey(name: 'image_url') this.imageUrl,
    this.location,
    required this.status,
    @JsonKey(name: 'reported_at') this.reportedAt,
    @JsonKey(name: 'resolved_at') this.resolvedAt,
    @JsonKey(name: 'resolution_notes') this.resolutionNotes,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$IncidentImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncidentImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'handled_by')
  final String? handledBy;
  @override
  @JsonKey(name: 'tour_booking_id')
  final String? tourBookingId;
  @override
  @JsonKey(name: 'coach_booking_id')
  final String? coachBookingId;
  @override
  @JsonKey(name: 'hotel_booking_id')
  final String? hotelBookingId;
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
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  final String? location;
  @override
  final IncidentStatus status;
  @override
  @JsonKey(name: 'reported_at')
  final DateTime? reportedAt;
  @override
  @JsonKey(name: 'resolved_at')
  final DateTime? resolvedAt;
  @override
  @JsonKey(name: 'resolution_notes')
  final String? resolutionNotes;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Incident(id: $id, handledBy: $handledBy, tourBookingId: $tourBookingId, coachBookingId: $coachBookingId, hotelBookingId: $hotelBookingId, reportedByUserId: $reportedByUserId, reportedByStaffId: $reportedByStaffId, type: $type, severity: $severity, description: $description, imageUrl: $imageUrl, location: $location, status: $status, reportedAt: $reportedAt, resolvedAt: $resolvedAt, resolutionNotes: $resolutionNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncidentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.handledBy, handledBy) ||
                other.handledBy == handledBy) &&
            (identical(other.tourBookingId, tourBookingId) ||
                other.tourBookingId == tourBookingId) &&
            (identical(other.coachBookingId, coachBookingId) ||
                other.coachBookingId == coachBookingId) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.reportedByUserId, reportedByUserId) ||
                other.reportedByUserId == reportedByUserId) &&
            (identical(other.reportedByStaffId, reportedByStaffId) ||
                other.reportedByStaffId == reportedByStaffId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.resolutionNotes, resolutionNotes) ||
                other.resolutionNotes == resolutionNotes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    handledBy,
    tourBookingId,
    coachBookingId,
    hotelBookingId,
    reportedByUserId,
    reportedByStaffId,
    type,
    severity,
    description,
    imageUrl,
    location,
    status,
    reportedAt,
    resolvedAt,
    resolutionNotes,
    createdAt,
    updatedAt,
  );

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
    @JsonKey(name: 'handled_by') final String? handledBy,
    @JsonKey(name: 'tour_booking_id') final String? tourBookingId,
    @JsonKey(name: 'coach_booking_id') final String? coachBookingId,
    @JsonKey(name: 'hotel_booking_id') final String? hotelBookingId,
    @JsonKey(name: 'reported_by_user_id') final String? reportedByUserId,
    @JsonKey(name: 'reported_by_staff_id') final String? reportedByStaffId,
    required final IncidentType type,
    required final IncidentSeverity severity,
    final String? description,
    @JsonKey(name: 'image_url') final String? imageUrl,
    final String? location,
    required final IncidentStatus status,
    @JsonKey(name: 'reported_at') final DateTime? reportedAt,
    @JsonKey(name: 'resolved_at') final DateTime? resolvedAt,
    @JsonKey(name: 'resolution_notes') final String? resolutionNotes,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$IncidentImpl;

  factory _Incident.fromJson(Map<String, dynamic> json) =
      _$IncidentImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'handled_by')
  String? get handledBy;
  @override
  @JsonKey(name: 'tour_booking_id')
  String? get tourBookingId;
  @override
  @JsonKey(name: 'coach_booking_id')
  String? get coachBookingId;
  @override
  @JsonKey(name: 'hotel_booking_id')
  String? get hotelBookingId;
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
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  String? get location;
  @override
  IncidentStatus get status;
  @override
  @JsonKey(name: 'reported_at')
  DateTime? get reportedAt;
  @override
  @JsonKey(name: 'resolved_at')
  DateTime? get resolvedAt;
  @override
  @JsonKey(name: 'resolution_notes')
  String? get resolutionNotes;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Incident
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncidentImplCopyWith<_$IncidentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
