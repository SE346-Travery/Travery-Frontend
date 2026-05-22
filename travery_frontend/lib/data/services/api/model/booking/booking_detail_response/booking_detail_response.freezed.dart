// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BookingDetailResponse _$BookingDetailResponseFromJson(
  Map<String, dynamic> json,
) {
  return _BookingDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$BookingDetailResponse {
  TourBookingData get data => throw _privateConstructorUsedError;

  /// Serializes this BookingDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingDetailResponseCopyWith<BookingDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailResponseCopyWith<$Res> {
  factory $BookingDetailResponseCopyWith(
    BookingDetailResponse value,
    $Res Function(BookingDetailResponse) then,
  ) = _$BookingDetailResponseCopyWithImpl<$Res, BookingDetailResponse>;
  @useResult
  $Res call({TourBookingData data});

  $TourBookingDataCopyWith<$Res> get data;
}

/// @nodoc
class _$BookingDetailResponseCopyWithImpl<
  $Res,
  $Val extends BookingDetailResponse
>
    implements $BookingDetailResponseCopyWith<$Res> {
  _$BookingDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as TourBookingData,
          )
          as $Val,
    );
  }

  /// Create a copy of BookingDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourBookingDataCopyWith<$Res> get data {
    return $TourBookingDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingDetailResponseImplCopyWith<$Res>
    implements $BookingDetailResponseCopyWith<$Res> {
  factory _$$BookingDetailResponseImplCopyWith(
    _$BookingDetailResponseImpl value,
    $Res Function(_$BookingDetailResponseImpl) then,
  ) = __$$BookingDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TourBookingData data});

  @override
  $TourBookingDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$BookingDetailResponseImplCopyWithImpl<$Res>
    extends
        _$BookingDetailResponseCopyWithImpl<$Res, _$BookingDetailResponseImpl>
    implements _$$BookingDetailResponseImplCopyWith<$Res> {
  __$$BookingDetailResponseImplCopyWithImpl(
    _$BookingDetailResponseImpl _value,
    $Res Function(_$BookingDetailResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$BookingDetailResponseImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as TourBookingData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDetailResponseImpl implements _BookingDetailResponse {
  const _$BookingDetailResponseImpl({required this.data});

  factory _$BookingDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDetailResponseImplFromJson(json);

  @override
  final TourBookingData data;

  @override
  String toString() {
    return 'BookingDetailResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of BookingDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDetailResponseImplCopyWith<_$BookingDetailResponseImpl>
  get copyWith =>
      __$$BookingDetailResponseImplCopyWithImpl<_$BookingDetailResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDetailResponseImplToJson(this);
  }
}

abstract class _BookingDetailResponse implements BookingDetailResponse {
  const factory _BookingDetailResponse({required final TourBookingData data}) =
      _$BookingDetailResponseImpl;

  factory _BookingDetailResponse.fromJson(Map<String, dynamic> json) =
      _$BookingDetailResponseImpl.fromJson;

  @override
  TourBookingData get data;

  /// Create a copy of BookingDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDetailResponseImplCopyWith<_$BookingDetailResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
