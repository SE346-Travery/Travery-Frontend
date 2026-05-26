// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_instance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourInstanceResponse {

 String get id; String get startDate; String get endDate; String get status; int get availableSlots;
/// Create a copy of TourInstanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourInstanceResponseCopyWith<TourInstanceResponse> get copyWith => _$TourInstanceResponseCopyWithImpl<TourInstanceResponse>(this as TourInstanceResponse, _$identity);

  /// Serializes this TourInstanceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourInstanceResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startDate,endDate,status,availableSlots);

@override
String toString() {
  return 'TourInstanceResponse(id: $id, startDate: $startDate, endDate: $endDate, status: $status, availableSlots: $availableSlots)';
}


}

/// @nodoc
abstract mixin class $TourInstanceResponseCopyWith<$Res>  {
  factory $TourInstanceResponseCopyWith(TourInstanceResponse value, $Res Function(TourInstanceResponse) _then) = _$TourInstanceResponseCopyWithImpl;
@useResult
$Res call({
 String id, String startDate, String endDate, String status, int availableSlots
});




}
/// @nodoc
class _$TourInstanceResponseCopyWithImpl<$Res>
    implements $TourInstanceResponseCopyWith<$Res> {
  _$TourInstanceResponseCopyWithImpl(this._self, this._then);

  final TourInstanceResponse _self;
  final $Res Function(TourInstanceResponse) _then;

/// Create a copy of TourInstanceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? startDate = null,Object? endDate = null,Object? status = null,Object? availableSlots = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,availableSlots: null == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TourInstanceResponse].
extension TourInstanceResponsePatterns on TourInstanceResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourInstanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourInstanceResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourInstanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _TourInstanceResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourInstanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TourInstanceResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String startDate,  String endDate,  String status,  int availableSlots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourInstanceResponse() when $default != null:
return $default(_that.id,_that.startDate,_that.endDate,_that.status,_that.availableSlots);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String startDate,  String endDate,  String status,  int availableSlots)  $default,) {final _that = this;
switch (_that) {
case _TourInstanceResponse():
return $default(_that.id,_that.startDate,_that.endDate,_that.status,_that.availableSlots);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String startDate,  String endDate,  String status,  int availableSlots)?  $default,) {final _that = this;
switch (_that) {
case _TourInstanceResponse() when $default != null:
return $default(_that.id,_that.startDate,_that.endDate,_that.status,_that.availableSlots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourInstanceResponse implements TourInstanceResponse {
  const _TourInstanceResponse({required this.id, required this.startDate, required this.endDate, required this.status, this.availableSlots = 0});
  factory _TourInstanceResponse.fromJson(Map<String, dynamic> json) => _$TourInstanceResponseFromJson(json);

@override final  String id;
@override final  String startDate;
@override final  String endDate;
@override final  String status;
@override@JsonKey() final  int availableSlots;

/// Create a copy of TourInstanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourInstanceResponseCopyWith<_TourInstanceResponse> get copyWith => __$TourInstanceResponseCopyWithImpl<_TourInstanceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourInstanceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourInstanceResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startDate,endDate,status,availableSlots);

@override
String toString() {
  return 'TourInstanceResponse(id: $id, startDate: $startDate, endDate: $endDate, status: $status, availableSlots: $availableSlots)';
}


}

/// @nodoc
abstract mixin class _$TourInstanceResponseCopyWith<$Res> implements $TourInstanceResponseCopyWith<$Res> {
  factory _$TourInstanceResponseCopyWith(_TourInstanceResponse value, $Res Function(_TourInstanceResponse) _then) = __$TourInstanceResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String startDate, String endDate, String status, int availableSlots
});




}
/// @nodoc
class __$TourInstanceResponseCopyWithImpl<$Res>
    implements _$TourInstanceResponseCopyWith<$Res> {
  __$TourInstanceResponseCopyWithImpl(this._self, this._then);

  final _TourInstanceResponse _self;
  final $Res Function(_TourInstanceResponse) _then;

/// Create a copy of TourInstanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startDate = null,Object? endDate = null,Object? status = null,Object? availableSlots = null,}) {
  return _then(_TourInstanceResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,availableSlots: null == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
