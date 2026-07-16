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

@JsonKey(name: 'step_index') int? get stepIndex; int? get index; String? get action; String? get description; String? get status;@JsonKey(name: 'duration_ms') int? get durationMs; String? get error; String? get target;@DynamicToStringConverter() String? get value; String? get screenshot;@JsonKey(name: 'target_index') int? get targetIndex;
/// Create a copy of RunStepModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RunStepModelCopyWith<RunStepModel> get copyWith => _$RunStepModelCopyWithImpl<RunStepModel>(this as RunStepModel, _$identity);

  /// Serializes this RunStepModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RunStepModel&&(identical(other.stepIndex, stepIndex) || other.stepIndex == stepIndex)&&(identical(other.index, index) || other.index == index)&&(identical(other.action, action) || other.action == action)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.error, error) || other.error == error)&&(identical(other.target, target) || other.target == target)&&(identical(other.value, value) || other.value == value)&&(identical(other.screenshot, screenshot) || other.screenshot == screenshot)&&(identical(other.targetIndex, targetIndex) || other.targetIndex == targetIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stepIndex,index,action,description,status,durationMs,error,target,value,screenshot,targetIndex);

@override
String toString() {
  return 'RunStepModel(stepIndex: $stepIndex, index: $index, action: $action, description: $description, status: $status, durationMs: $durationMs, error: $error, target: $target, value: $value, screenshot: $screenshot, targetIndex: $targetIndex)';
}


}

/// @nodoc
abstract mixin class $RunStepModelCopyWith<$Res>  {
  factory $RunStepModelCopyWith(RunStepModel value, $Res Function(RunStepModel) _then) = _$RunStepModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'step_index') int? stepIndex, int? index, String? action, String? description, String? status,@JsonKey(name: 'duration_ms') int? durationMs, String? error, String? target,@DynamicToStringConverter() String? value, String? screenshot,@JsonKey(name: 'target_index') int? targetIndex
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
@pragma('vm:prefer-inline') @override $Res call({Object? stepIndex = freezed,Object? index = freezed,Object? action = freezed,Object? description = freezed,Object? status = freezed,Object? durationMs = freezed,Object? error = freezed,Object? target = freezed,Object? value = freezed,Object? screenshot = freezed,Object? targetIndex = freezed,}) {
  return _then(_self.copyWith(
stepIndex: freezed == stepIndex ? _self.stepIndex : stepIndex // ignore: cast_nullable_to_non_nullable
as int?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,screenshot: freezed == screenshot ? _self.screenshot : screenshot // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'step_index')  int? stepIndex,  int? index,  String? action,  String? description,  String? status, @JsonKey(name: 'duration_ms')  int? durationMs,  String? error,  String? target, @DynamicToStringConverter()  String? value,  String? screenshot, @JsonKey(name: 'target_index')  int? targetIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RunStepModel() when $default != null:
return $default(_that.stepIndex,_that.index,_that.action,_that.description,_that.status,_that.durationMs,_that.error,_that.target,_that.value,_that.screenshot,_that.targetIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'step_index')  int? stepIndex,  int? index,  String? action,  String? description,  String? status, @JsonKey(name: 'duration_ms')  int? durationMs,  String? error,  String? target, @DynamicToStringConverter()  String? value,  String? screenshot, @JsonKey(name: 'target_index')  int? targetIndex)  $default,) {final _that = this;
switch (_that) {
case _RunStepModel():
return $default(_that.stepIndex,_that.index,_that.action,_that.description,_that.status,_that.durationMs,_that.error,_that.target,_that.value,_that.screenshot,_that.targetIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'step_index')  int? stepIndex,  int? index,  String? action,  String? description,  String? status, @JsonKey(name: 'duration_ms')  int? durationMs,  String? error,  String? target, @DynamicToStringConverter()  String? value,  String? screenshot, @JsonKey(name: 'target_index')  int? targetIndex)?  $default,) {final _that = this;
switch (_that) {
case _RunStepModel() when $default != null:
return $default(_that.stepIndex,_that.index,_that.action,_that.description,_that.status,_that.durationMs,_that.error,_that.target,_that.value,_that.screenshot,_that.targetIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RunStepModel implements RunStepModel {
  const _RunStepModel({@JsonKey(name: 'step_index') this.stepIndex, this.index, this.action, this.description, this.status, @JsonKey(name: 'duration_ms') this.durationMs, this.error, this.target, @DynamicToStringConverter() this.value, this.screenshot, @JsonKey(name: 'target_index') this.targetIndex});
  factory _RunStepModel.fromJson(Map<String, dynamic> json) => _$RunStepModelFromJson(json);

@override@JsonKey(name: 'step_index') final  int? stepIndex;
@override final  int? index;
@override final  String? action;
@override final  String? description;
@override final  String? status;
@override@JsonKey(name: 'duration_ms') final  int? durationMs;
@override final  String? error;
@override final  String? target;
@override@DynamicToStringConverter() final  String? value;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RunStepModel&&(identical(other.stepIndex, stepIndex) || other.stepIndex == stepIndex)&&(identical(other.index, index) || other.index == index)&&(identical(other.action, action) || other.action == action)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.error, error) || other.error == error)&&(identical(other.target, target) || other.target == target)&&(identical(other.value, value) || other.value == value)&&(identical(other.screenshot, screenshot) || other.screenshot == screenshot)&&(identical(other.targetIndex, targetIndex) || other.targetIndex == targetIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stepIndex,index,action,description,status,durationMs,error,target,value,screenshot,targetIndex);

@override
String toString() {
  return 'RunStepModel(stepIndex: $stepIndex, index: $index, action: $action, description: $description, status: $status, durationMs: $durationMs, error: $error, target: $target, value: $value, screenshot: $screenshot, targetIndex: $targetIndex)';
}


}

/// @nodoc
abstract mixin class _$RunStepModelCopyWith<$Res> implements $RunStepModelCopyWith<$Res> {
  factory _$RunStepModelCopyWith(_RunStepModel value, $Res Function(_RunStepModel) _then) = __$RunStepModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'step_index') int? stepIndex, int? index, String? action, String? description, String? status,@JsonKey(name: 'duration_ms') int? durationMs, String? error, String? target,@DynamicToStringConverter() String? value, String? screenshot,@JsonKey(name: 'target_index') int? targetIndex
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
@override @pragma('vm:prefer-inline') $Res call({Object? stepIndex = freezed,Object? index = freezed,Object? action = freezed,Object? description = freezed,Object? status = freezed,Object? durationMs = freezed,Object? error = freezed,Object? target = freezed,Object? value = freezed,Object? screenshot = freezed,Object? targetIndex = freezed,}) {
  return _then(_RunStepModel(
stepIndex: freezed == stepIndex ? _self.stepIndex : stepIndex // ignore: cast_nullable_to_non_nullable
as int?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,screenshot: freezed == screenshot ? _self.screenshot : screenshot // ignore: cast_nullable_to_non_nullable
as String?,targetIndex: freezed == targetIndex ? _self.targetIndex : targetIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
