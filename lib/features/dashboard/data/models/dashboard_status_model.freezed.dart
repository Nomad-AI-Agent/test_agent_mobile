// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardStatusModel {

 int get total; String get successRate; String get avgDur; int get runsLast24h;
/// Create a copy of DashboardStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStatusModelCopyWith<DashboardStatusModel> get copyWith => _$DashboardStatusModelCopyWithImpl<DashboardStatusModel>(this as DashboardStatusModel, _$identity);

  /// Serializes this DashboardStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardStatusModel&&(identical(other.total, total) || other.total == total)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.avgDur, avgDur) || other.avgDur == avgDur)&&(identical(other.runsLast24h, runsLast24h) || other.runsLast24h == runsLast24h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,successRate,avgDur,runsLast24h);

@override
String toString() {
  return 'DashboardStatusModel(total: $total, successRate: $successRate, avgDur: $avgDur, runsLast24h: $runsLast24h)';
}


}

/// @nodoc
abstract mixin class $DashboardStatusModelCopyWith<$Res>  {
  factory $DashboardStatusModelCopyWith(DashboardStatusModel value, $Res Function(DashboardStatusModel) _then) = _$DashboardStatusModelCopyWithImpl;
@useResult
$Res call({
 int total, String successRate, String avgDur, int runsLast24h
});




}
/// @nodoc
class _$DashboardStatusModelCopyWithImpl<$Res>
    implements $DashboardStatusModelCopyWith<$Res> {
  _$DashboardStatusModelCopyWithImpl(this._self, this._then);

  final DashboardStatusModel _self;
  final $Res Function(DashboardStatusModel) _then;

/// Create a copy of DashboardStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? successRate = null,Object? avgDur = null,Object? runsLast24h = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as String,avgDur: null == avgDur ? _self.avgDur : avgDur // ignore: cast_nullable_to_non_nullable
as String,runsLast24h: null == runsLast24h ? _self.runsLast24h : runsLast24h // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardStatusModel].
extension DashboardStatusModelPatterns on DashboardStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  String successRate,  String avgDur,  int runsLast24h)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardStatusModel() when $default != null:
return $default(_that.total,_that.successRate,_that.avgDur,_that.runsLast24h);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  String successRate,  String avgDur,  int runsLast24h)  $default,) {final _that = this;
switch (_that) {
case _DashboardStatusModel():
return $default(_that.total,_that.successRate,_that.avgDur,_that.runsLast24h);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  String successRate,  String avgDur,  int runsLast24h)?  $default,) {final _that = this;
switch (_that) {
case _DashboardStatusModel() when $default != null:
return $default(_that.total,_that.successRate,_that.avgDur,_that.runsLast24h);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardStatusModel implements DashboardStatusModel {
  const _DashboardStatusModel({required this.total, required this.successRate, required this.avgDur, required this.runsLast24h});
  factory _DashboardStatusModel.fromJson(Map<String, dynamic> json) => _$DashboardStatusModelFromJson(json);

@override final  int total;
@override final  String successRate;
@override final  String avgDur;
@override final  int runsLast24h;

/// Create a copy of DashboardStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStatusModelCopyWith<_DashboardStatusModel> get copyWith => __$DashboardStatusModelCopyWithImpl<_DashboardStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardStatusModel&&(identical(other.total, total) || other.total == total)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.avgDur, avgDur) || other.avgDur == avgDur)&&(identical(other.runsLast24h, runsLast24h) || other.runsLast24h == runsLast24h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,successRate,avgDur,runsLast24h);

@override
String toString() {
  return 'DashboardStatusModel(total: $total, successRate: $successRate, avgDur: $avgDur, runsLast24h: $runsLast24h)';
}


}

/// @nodoc
abstract mixin class _$DashboardStatusModelCopyWith<$Res> implements $DashboardStatusModelCopyWith<$Res> {
  factory _$DashboardStatusModelCopyWith(_DashboardStatusModel value, $Res Function(_DashboardStatusModel) _then) = __$DashboardStatusModelCopyWithImpl;
@override @useResult
$Res call({
 int total, String successRate, String avgDur, int runsLast24h
});




}
/// @nodoc
class __$DashboardStatusModelCopyWithImpl<$Res>
    implements _$DashboardStatusModelCopyWith<$Res> {
  __$DashboardStatusModelCopyWithImpl(this._self, this._then);

  final _DashboardStatusModel _self;
  final $Res Function(_DashboardStatusModel) _then;

/// Create a copy of DashboardStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? successRate = null,Object? avgDur = null,Object? runsLast24h = null,}) {
  return _then(_DashboardStatusModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as String,avgDur: null == avgDur ? _self.avgDur : avgDur // ignore: cast_nullable_to_non_nullable
as String,runsLast24h: null == runsLast24h ? _self.runsLast24h : runsLast24h // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
