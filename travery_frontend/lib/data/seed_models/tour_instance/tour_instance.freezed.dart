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
  @JsonKey(name: 'startDate')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  TourInstanceStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'availableSlots')
  int get availableSlots => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'startDate') DateTime startDate,
    @JsonKey(name: 'endDate') DateTime endDate,
    @JsonKey(name: 'status') TourInstanceStatus status,
    @JsonKey(name: 'availableSlots') int availableSlots,
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
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? availableSlots = null,
    Object? bookings = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TourInstanceStatus,
            availableSlots: null == availableSlots
                ? _value.availableSlots
                : availableSlots // ignore: cast_nullable_to_non_nullable
                      as int,
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
    @JsonKey(name: 'startDate') DateTime startDate,
    @JsonKey(name: 'endDate') DateTime endDate,
    @JsonKey(name: 'status') TourInstanceStatus status,
    @JsonKey(name: 'availableSlots') int availableSlots,
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
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? availableSlots = null,
    Object? bookings = freezed,
  }) {
    return _then(
      _$TourInstanceImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TourInstanceStatus,
        availableSlots: null == availableSlots
            ? _value.availableSlots
            : availableSlots // ignore: cast_nullable_to_non_nullable
                  as int,
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
    @JsonKey(name: 'startDate') required this.startDate,
    @JsonKey(name: 'endDate') required this.endDate,
    @JsonKey(name: 'status') required this.status,
    @JsonKey(name: 'availableSlots') this.availableSlots = 0,
    final List<TourBooking>? bookings,
  }) : _bookings = bookings;

  factory _$TourInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourInstanceImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @override
  @JsonKey(name: 'endDate')
  final DateTime endDate;
  @override
  @JsonKey(name: 'status')
  final TourInstanceStatus status;
  @override
  @JsonKey(name: 'availableSlots')
  final int availableSlots;

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
    return 'TourInstance(id: $id, startDate: $startDate, endDate: $endDate, status: $status, availableSlots: $availableSlots, bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.availableSlots, availableSlots) ||
                other.availableSlots == availableSlots) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    startDate,
    endDate,
    status,
    availableSlots,
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
    @JsonKey(name: 'startDate') required final DateTime startDate,
    @JsonKey(name: 'endDate') required final DateTime endDate,
    @JsonKey(name: 'status') required final TourInstanceStatus status,
    @JsonKey(name: 'availableSlots') final int availableSlots,
    final List<TourBooking>? bookings,
  }) = _$TourInstanceImpl;

  factory _TourInstance.fromJson(Map<String, dynamic> json) =
      _$TourInstanceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'startDate')
  DateTime get startDate;
  @override
  @JsonKey(name: 'endDate')
  DateTime get endDate;
  @override
  @JsonKey(name: 'status')
  TourInstanceStatus get status;
  @override
  @JsonKey(name: 'availableSlots')
  int get availableSlots;

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
