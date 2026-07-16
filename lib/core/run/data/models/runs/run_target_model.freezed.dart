// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'run_target_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RunTargetModel {

 String get url; String? get role;
/// Create a copy of RunTargetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RunTargetModelCopyWith<RunTargetModel> get copyWith => _$RunTargetModelCopyWithImpl<RunTargetModel>(this as RunTargetModel, _$identity);

  /// Serializes this RunTargetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RunTargetModel&&(identical(other.url, url) || other.url == url)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,role);

@override
String toString() {
  return 'RunTargetModel(url: $url, role: $role)';
}


}

/// @nodoc
abstract mixin class $RunTargetModelCopyWith<$Res>  {
  factory $RunTargetModelCopyWith(RunTargetModel value, $Res Function(RunTargetModel) _then) = _$RunTargetModelCopyWithImpl;
@useResult
$Res call({
 String url, String? role
});




}
/// @nodoc
class _$RunTargetModelCopyWithImpl<$Res>
    implements $RunTargetModelCopyWith<$Res> {
  _$RunTargetModelCopyWithImpl(this._self, this._then);

  final RunTargetModel _self;
  final $Res Function(RunTargetModel) _then;

/// Create a copy of RunTargetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? role = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RunTargetModel].
extension RunTargetModelPatterns on RunTargetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RunTargetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RunTargetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RunTargetModel value)  $default,){
final _that = this;
switch (_that) {
case _RunTargetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RunTargetModel value)?  $default,){
final _that = this;
switch (_that) {
case _RunTargetModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RunTargetModel() when $default != null:
return $default(_that.url,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String? role)  $default,) {final _that = this;
switch (_that) {
case _RunTargetModel():
return $default(_that.url,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String? role)?  $default,) {final _that = this;
switch (_that) {
case _RunTargetModel() when $default != null:
return $default(_that.url,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RunTargetModel implements RunTargetModel {
  const _RunTargetModel({required this.url, this.role});
  factory _RunTargetModel.fromJson(Map<String, dynamic> json) => _$RunTargetModelFromJson(json);

@override final  String url;
@override final  String? role;

/// Create a copy of RunTargetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RunTargetModelCopyWith<_RunTargetModel> get copyWith => __$RunTargetModelCopyWithImpl<_RunTargetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RunTargetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RunTargetModel&&(identical(other.url, url) || other.url == url)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,role);

@override
String toString() {
  return 'RunTargetModel(url: $url, role: $role)';
}


}

/// @nodoc
abstract mixin class _$RunTargetModelCopyWith<$Res> implements $RunTargetModelCopyWith<$Res> {
  factory _$RunTargetModelCopyWith(_RunTargetModel value, $Res Function(_RunTargetModel) _then) = __$RunTargetModelCopyWithImpl;
@override @useResult
$Res call({
 String url, String? role
});




}
/// @nodoc
class __$RunTargetModelCopyWithImpl<$Res>
    implements _$RunTargetModelCopyWith<$Res> {
  __$RunTargetModelCopyWithImpl(this._self, this._then);

  final _RunTargetModel _self;
  final $Res Function(_RunTargetModel) _then;

/// Create a copy of RunTargetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? role = freezed,}) {
  return _then(_RunTargetModel(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
