// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_summary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourSummaryResponse _$TourSummaryResponseFromJson(Map<String, dynamic> json) {
  return _TourSummaryResponse.fromJson(json);
}

/// @nodoc
mixin _$TourSummaryResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String get destinationName => throw _privateConstructorUsedError;
  int get durationDays => throw _privateConstructorUsedError;

  /// Serializes this TourSummaryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourSummaryResponseCopyWith<TourSummaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourSummaryResponseCopyWith<$Res> {
  factory $TourSummaryResponseCopyWith(
    TourSummaryResponse value,
    $Res Function(TourSummaryResponse) then,
  ) = _$TourSummaryResponseCopyWithImpl<$Res, TourSummaryResponse>;
  @useResult
  $Res call({
    String id,
    String name,
    double averageRating,
    double price,
    String? thumbnailUrl,
    String destinationName,
    int durationDays,
  });
}

/// @nodoc
class _$TourSummaryResponseCopyWithImpl<$Res, $Val extends TourSummaryResponse>
    implements $TourSummaryResponseCopyWith<$Res> {
  _$TourSummaryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? averageRating = null,
    Object? price = null,
    Object? thumbnailUrl = freezed,
    Object? destinationName = null,
    Object? durationDays = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            averageRating: null == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                      as double,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            thumbnailUrl: freezed == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            destinationName: null == destinationName
                ? _value.destinationName
                : destinationName // ignore: cast_nullable_to_non_nullable
                      as String,
            durationDays: null == durationDays
                ? _value.durationDays
                : durationDays // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TourSummaryResponseImplCopyWith<$Res>
    implements $TourSummaryResponseCopyWith<$Res> {
  factory _$$TourSummaryResponseImplCopyWith(
    _$TourSummaryResponseImpl value,
    $Res Function(_$TourSummaryResponseImpl) then,
  ) = __$$TourSummaryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    double averageRating,
    double price,
    String? thumbnailUrl,
    String destinationName,
    int durationDays,
  });
}

/// @nodoc
class __$$TourSummaryResponseImplCopyWithImpl<$Res>
    extends _$TourSummaryResponseCopyWithImpl<$Res, _$TourSummaryResponseImpl>
    implements _$$TourSummaryResponseImplCopyWith<$Res> {
  __$$TourSummaryResponseImplCopyWithImpl(
    _$TourSummaryResponseImpl _value,
    $Res Function(_$TourSummaryResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? averageRating = null,
    Object? price = null,
    Object? thumbnailUrl = freezed,
    Object? destinationName = null,
    Object? durationDays = null,
  }) {
    return _then(
      _$TourSummaryResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        averageRating: null == averageRating
            ? _value.averageRating
            : averageRating // ignore: cast_nullable_to_non_nullable
                  as double,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        thumbnailUrl: freezed == thumbnailUrl
            ? _value.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        destinationName: null == destinationName
            ? _value.destinationName
            : destinationName // ignore: cast_nullable_to_non_nullable
                  as String,
        durationDays: null == durationDays
            ? _value.durationDays
            : durationDays // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourSummaryResponseImpl implements _TourSummaryResponse {
  const _$TourSummaryResponseImpl({
    required this.id,
    required this.name,
    required this.averageRating,
    required this.price,
    this.thumbnailUrl,
    required this.destinationName,
    required this.durationDays,
  });

  factory _$TourSummaryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourSummaryResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double averageRating;
  @override
  final double price;
  @override
  final String? thumbnailUrl;
  @override
  final String destinationName;
  @override
  final int durationDays;

  @override
  String toString() {
    return 'TourSummaryResponse(id: $id, name: $name, averageRating: $averageRating, price: $price, thumbnailUrl: $thumbnailUrl, destinationName: $destinationName, durationDays: $durationDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourSummaryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.destinationName, destinationName) ||
                other.destinationName == destinationName) &&
            (identical(other.durationDays, durationDays) ||
                other.durationDays == durationDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    averageRating,
    price,
    thumbnailUrl,
    destinationName,
    durationDays,
  );

  /// Create a copy of TourSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourSummaryResponseImplCopyWith<_$TourSummaryResponseImpl> get copyWith =>
      __$$TourSummaryResponseImplCopyWithImpl<_$TourSummaryResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TourSummaryResponseImplToJson(this);
  }
}

abstract class _TourSummaryResponse implements TourSummaryResponse {
  const factory _TourSummaryResponse({
    required final String id,
    required final String name,
    required final double averageRating,
    required final double price,
    final String? thumbnailUrl,
    required final String destinationName,
    required final int durationDays,
  }) = _$TourSummaryResponseImpl;

  factory _TourSummaryResponse.fromJson(Map<String, dynamic> json) =
      _$TourSummaryResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get averageRating;
  @override
  double get price;
  @override
  String? get thumbnailUrl;
  @override
  String get destinationName;
  @override
  int get durationDays;

  /// Create a copy of TourSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourSummaryResponseImplCopyWith<_$TourSummaryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
