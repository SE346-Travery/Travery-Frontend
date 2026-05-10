// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_itinerary_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourItineraryDay _$TourItineraryDayFromJson(Map<String, dynamic> json) {
  return _TourItineraryDay.fromJson(json);
}

/// @nodoc
mixin _$TourItineraryDay {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'itinerary_id')
  String get itineraryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_number')
  int get dayNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'meal_count')
  int get mealCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TourItineraryDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourItineraryDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourItineraryDayCopyWith<TourItineraryDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourItineraryDayCopyWith<$Res> {
  factory $TourItineraryDayCopyWith(
    TourItineraryDay value,
    $Res Function(TourItineraryDay) then,
  ) = _$TourItineraryDayCopyWithImpl<$Res, TourItineraryDay>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'itinerary_id') String itineraryId,
    @JsonKey(name: 'day_number') int dayNumber,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'meal_count') int mealCount,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$TourItineraryDayCopyWithImpl<$Res, $Val extends TourItineraryDay>
    implements $TourItineraryDayCopyWith<$Res> {
  _$TourItineraryDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourItineraryDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? itineraryId = null,
    Object? dayNumber = null,
    Object? title = null,
    Object? description = freezed,
    Object? mealCount = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            itineraryId: null == itineraryId
                ? _value.itineraryId
                : itineraryId // ignore: cast_nullable_to_non_nullable
                      as String,
            dayNumber: null == dayNumber
                ? _value.dayNumber
                : dayNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            mealCount: null == mealCount
                ? _value.mealCount
                : mealCount // ignore: cast_nullable_to_non_nullable
                      as int,
            startTime: freezed == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TourItineraryDayImplCopyWith<$Res>
    implements $TourItineraryDayCopyWith<$Res> {
  factory _$$TourItineraryDayImplCopyWith(
    _$TourItineraryDayImpl value,
    $Res Function(_$TourItineraryDayImpl) then,
  ) = __$$TourItineraryDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'itinerary_id') String itineraryId,
    @JsonKey(name: 'day_number') int dayNumber,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'meal_count') int mealCount,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$TourItineraryDayImplCopyWithImpl<$Res>
    extends _$TourItineraryDayCopyWithImpl<$Res, _$TourItineraryDayImpl>
    implements _$$TourItineraryDayImplCopyWith<$Res> {
  __$$TourItineraryDayImplCopyWithImpl(
    _$TourItineraryDayImpl _value,
    $Res Function(_$TourItineraryDayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourItineraryDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? itineraryId = null,
    Object? dayNumber = null,
    Object? title = null,
    Object? description = freezed,
    Object? mealCount = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$TourItineraryDayImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        itineraryId: null == itineraryId
            ? _value.itineraryId
            : itineraryId // ignore: cast_nullable_to_non_nullable
                  as String,
        dayNumber: null == dayNumber
            ? _value.dayNumber
            : dayNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        mealCount: null == mealCount
            ? _value.mealCount
            : mealCount // ignore: cast_nullable_to_non_nullable
                  as int,
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
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
class _$TourItineraryDayImpl implements _TourItineraryDay {
  const _$TourItineraryDayImpl({
    this.id,
    @JsonKey(name: 'itinerary_id') required this.itineraryId,
    @JsonKey(name: 'day_number') required this.dayNumber,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'meal_count') this.mealCount = 0,
    @JsonKey(name: 'start_time') this.startTime,
    @JsonKey(name: 'end_time') this.endTime,
    @JsonKey(name: 'location') this.location,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$TourItineraryDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourItineraryDayImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'itinerary_id')
  final String itineraryId;
  @override
  @JsonKey(name: 'day_number')
  final int dayNumber;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'meal_count')
  final int mealCount;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TourItineraryDay(id: $id, itineraryId: $itineraryId, dayNumber: $dayNumber, title: $title, description: $description, mealCount: $mealCount, startTime: $startTime, endTime: $endTime, location: $location, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourItineraryDayImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itineraryId, itineraryId) ||
                other.itineraryId == itineraryId) &&
            (identical(other.dayNumber, dayNumber) ||
                other.dayNumber == dayNumber) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mealCount, mealCount) ||
                other.mealCount == mealCount) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
    itineraryId,
    dayNumber,
    title,
    description,
    mealCount,
    startTime,
    endTime,
    location,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TourItineraryDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourItineraryDayImplCopyWith<_$TourItineraryDayImpl> get copyWith =>
      __$$TourItineraryDayImplCopyWithImpl<_$TourItineraryDayImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TourItineraryDayImplToJson(this);
  }
}

abstract class _TourItineraryDay implements TourItineraryDay {
  const factory _TourItineraryDay({
    final String? id,
    @JsonKey(name: 'itinerary_id') required final String itineraryId,
    @JsonKey(name: 'day_number') required final int dayNumber,
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'meal_count') final int mealCount,
    @JsonKey(name: 'start_time') final String? startTime,
    @JsonKey(name: 'end_time') final String? endTime,
    @JsonKey(name: 'location') final String? location,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$TourItineraryDayImpl;

  factory _TourItineraryDay.fromJson(Map<String, dynamic> json) =
      _$TourItineraryDayImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'itinerary_id')
  String get itineraryId;
  @override
  @JsonKey(name: 'day_number')
  int get dayNumber;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'meal_count')
  int get mealCount;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of TourItineraryDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourItineraryDayImplCopyWith<_$TourItineraryDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
