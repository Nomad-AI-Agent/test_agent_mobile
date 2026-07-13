// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'run_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RunStepModel {

 int get index; String get action; String get description; String get target; String? get value; String get status; String? get error;@JsonKey(name: 'duration_ms') int get durationMs; String? get screenshot;@JsonKey(name: 'target_index') int? get targetIndex;
/// Create a copy of RunStepModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RunStepModelCopyWith<RunStepModel> get copyWith => _$RunStepModelCopyWithImpl<RunStepModel>(this as RunStepModel, _$identity);

  /// Serializes this RunStepModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RunStepModel&&(identical(other.index, index) || other.index == index)&&(identical(other.action, action) || other.action == action)&&(identical(other.description, description) || other.description == description)&&(identical(other.target, target) || other.target == target)&&(identical(other.value, value) || other.value == value)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.screenshot, screenshot) || other.screenshot == screenshot)&&(identical(other.targetIndex, targetIndex) || other.targetIndex == targetIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,action,description,target,value,status,error,durationMs,screenshot,targetIndex);

@override
String toString() {
  return 'RunStepModel(index: $index, action: $action, description: $description, target: $target, value: $value, status: $status, error: $error, durationMs: $durationMs, screenshot: $screenshot, targetIndex: $targetIndex)';
}


}

/// @nodoc
abstract mixin class $RunStepModelCopyWith<$Res>  {
  factory $RunStepModelCopyWith(RunStepModel value, $Res Function(RunStepModel) _then) = _$RunStepModelCopyWithImpl;
@useResult
$Res call({
 int index, String action, String description, String target, String? value, String status, String? error,@JsonKey(name: 'duration_ms') int durationMs, String? screenshot,@JsonKey(name: 'target_index') int? targetIndex
});




}
/// @nodoc
class _$RunStepModelCopyWithImpl<$Res>
    implements $RunStepModelCopyWith<$Res> {
  _$RunStepModelCopyWithImpl(this._self, this._then);

  final RunStepModel _self;
  final $Res Function(RunStepModel) _then;

/// Create a copy of RunStepModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? action = null,Object? description = null,Object? target = null,Object? value = freezed,Object? status = null,Object? error = freezed,Object? durationMs = null,Object? screenshot = freezed,Object? targetIndex = freezed,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,durationMs: null == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int,screenshot: freezed == screenshot ? _self.screenshot : screenshot // ignore: cast_nullable_to_non_nullable
as String?,targetIndex: freezed == targetIndex ? _self.targetIndex : targetIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RunStepModel].
extension RunStepModelPatterns on RunStepModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RunStepModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RunStepModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RunStepModel value)  $default,){
final _that = this;
switch (_that) {
case _RunStepModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RunStepModel value)?  $default,){
final _that = this;
switch (_that) {
case _RunStepModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  String action,  String description,  String target,  String? value,  String status,  String? error, @JsonKey(name: 'duration_ms')  int durationMs,  String? screenshot, @JsonKey(name: 'target_index')  int? targetIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RunStepModel() when $default != null:
return $default(_that.index,_that.action,_that.description,_that.target,_that.value,_that.status,_that.error,_that.durationMs,_that.screenshot,_that.targetIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  String action,  String description,  String target,  String? value,  String status,  String? error, @JsonKey(name: 'duration_ms')  int durationMs,  String? screenshot, @JsonKey(name: 'target_index')  int? targetIndex)  $default,) {final _that = this;
switch (_that) {
case _RunStepModel():
return $default(_that.index,_that.action,_that.description,_that.target,_that.value,_that.status,_that.error,_that.durationMs,_that.screenshot,_that.targetIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  String action,  String description,  String target,  String? value,  String status,  String? error, @JsonKey(name: 'duration_ms')  int durationMs,  String? screenshot, @JsonKey(name: 'target_index')  int? targetIndex)?  $default,) {final _that = this;
switch (_that) {
case _RunStepModel() when $default != null:
return $default(_that.index,_that.action,_that.description,_that.target,_that.value,_that.status,_that.error,_that.durationMs,_that.screenshot,_that.targetIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RunStepModel implements RunStepModel {
  const _RunStepModel({required this.index, required this.action, required this.description, required this.target, this.value, required this.status, this.error, @JsonKey(name: 'duration_ms') required this.durationMs, this.screenshot, @JsonKey(name: 'target_index') this.targetIndex});
  factory _RunStepModel.fromJson(Map<String, dynamic> json) => _$RunStepModelFromJson(json);

@override final  int index;
@override final  String action;
@override final  String description;
@override final  String target;
@override final  String? value;
@override final  String status;
@override final  String? error;
@override@JsonKey(name: 'duration_ms') final  int durationMs;
@override final  String? screenshot;
@override@JsonKey(name: 'target_index') final  int? targetIndex;

/// Create a copy of RunStepModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RunStepModelCopyWith<_RunStepModel> get copyWith => __$RunStepModelCopyWithImpl<_RunStepModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RunStepModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RunStepModel&&(identical(other.index, index) || other.index == index)&&(identical(other.action, action) || other.action == action)&&(identical(other.description, description) || other.description == description)&&(identical(other.target, target) || other.target == target)&&(identical(other.value, value) || other.value == value)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.screenshot, screenshot) || other.screenshot == screenshot)&&(identical(other.targetIndex, targetIndex) || other.targetIndex == targetIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,action,description,target,value,status,error,durationMs,screenshot,targetIndex);

@override
String toString() {
  return 'RunStepModel(index: $index, action: $action, description: $description, target: $target, value: $value, status: $status, error: $error, durationMs: $durationMs, screenshot: $screenshot, targetIndex: $targetIndex)';
}


}

/// @nodoc
abstract mixin class _$RunStepModelCopyWith<$Res> implements $RunStepModelCopyWith<$Res> {
  factory _$RunStepModelCopyWith(_RunStepModel value, $Res Function(_RunStepModel) _then) = __$RunStepModelCopyWithImpl;
@override @useResult
$Res call({
 int index, String action, String description, String target, String? value, String status, String? error,@JsonKey(name: 'duration_ms') int durationMs, String? screenshot,@JsonKey(name: 'target_index') int? targetIndex
});




}
/// @nodoc
class __$RunStepModelCopyWithImpl<$Res>
    implements _$RunStepModelCopyWith<$Res> {
  __$RunStepModelCopyWithImpl(this._self, this._then);

  final _RunStepModel _self;
  final $Res Function(_RunStepModel) _then;

/// Create a copy of RunStepModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? action = null,Object? description = null,Object? target = null,Object? value = freezed,Object? status = null,Object? error = freezed,Object? durationMs = null,Object? screenshot = freezed,Object? targetIndex = freezed,}) {
  return _then(_RunStepModel(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,durationMs: null == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int,screenshot: freezed == screenshot ? _self.screenshot : screenshot // ignore: cast_nullable_to_non_nullable
as String?,targetIndex: freezed == targetIndex ? _self.targetIndex : targetIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
