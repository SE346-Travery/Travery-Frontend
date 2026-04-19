// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_booking_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HotelBookingMember _$HotelBookingMemberFromJson(Map<String, dynamic> json) {
  return _HotelBookingMember.fromJson(json);
}

/// @nodoc
mixin _$HotelBookingMember {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_booking_id')
  String get hotelBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  String get cccd => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this HotelBookingMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelBookingMemberCopyWith<HotelBookingMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelBookingMemberCopyWith<$Res> {
  factory $HotelBookingMemberCopyWith(
    HotelBookingMember value,
    $Res Function(HotelBookingMember) then,
  ) = _$HotelBookingMemberCopyWithImpl<$Res, HotelBookingMember>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_booking_id') String hotelBookingId,
    @JsonKey(name: 'full_name') String fullName,
    String cccd,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$HotelBookingMemberCopyWithImpl<$Res, $Val extends HotelBookingMember>
    implements $HotelBookingMemberCopyWith<$Res> {
  _$HotelBookingMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? fullName = null,
    Object? cccd = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingId: null == hotelBookingId
                ? _value.hotelBookingId
                : hotelBookingId // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            cccd: null == cccd
                ? _value.cccd
                : cccd // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$HotelBookingMemberImplCopyWith<$Res>
    implements $HotelBookingMemberCopyWith<$Res> {
  factory _$$HotelBookingMemberImplCopyWith(
    _$HotelBookingMemberImpl value,
    $Res Function(_$HotelBookingMemberImpl) then,
  ) = __$$HotelBookingMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_booking_id') String hotelBookingId,
    @JsonKey(name: 'full_name') String fullName,
    String cccd,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$HotelBookingMemberImplCopyWithImpl<$Res>
    extends _$HotelBookingMemberCopyWithImpl<$Res, _$HotelBookingMemberImpl>
    implements _$$HotelBookingMemberImplCopyWith<$Res> {
  __$$HotelBookingMemberImplCopyWithImpl(
    _$HotelBookingMemberImpl _value,
    $Res Function(_$HotelBookingMemberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? fullName = null,
    Object? cccd = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$HotelBookingMemberImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: null == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        cccd: null == cccd
            ? _value.cccd
            : cccd // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$HotelBookingMemberImpl implements _HotelBookingMember {
  const _$HotelBookingMemberImpl({
    this.id,
    @JsonKey(name: 'hotel_booking_id') required this.hotelBookingId,
    @JsonKey(name: 'full_name') required this.fullName,
    required this.cccd,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$HotelBookingMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelBookingMemberImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'hotel_booking_id')
  final String hotelBookingId;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final String cccd;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'HotelBookingMember(id: $id, hotelBookingId: $hotelBookingId, fullName: $fullName, cccd: $cccd, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelBookingMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.cccd, cccd) || other.cccd == cccd) &&
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
    hotelBookingId,
    fullName,
    cccd,
    createdAt,
    updatedAt,
  );

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelBookingMemberImplCopyWith<_$HotelBookingMemberImpl> get copyWith =>
      __$$HotelBookingMemberImplCopyWithImpl<_$HotelBookingMemberImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelBookingMemberImplToJson(this);
  }
}

abstract class _HotelBookingMember implements HotelBookingMember {
  const factory _HotelBookingMember({
    final String? id,
    @JsonKey(name: 'hotel_booking_id') required final String hotelBookingId,
    @JsonKey(name: 'full_name') required final String fullName,
    required final String cccd,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$HotelBookingMemberImpl;

  factory _HotelBookingMember.fromJson(Map<String, dynamic> json) =
      _$HotelBookingMemberImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'hotel_booking_id')
  String get hotelBookingId;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  String get cccd;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelBookingMemberImplCopyWith<_$HotelBookingMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
