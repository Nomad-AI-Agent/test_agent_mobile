// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_run_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LatestRunModel {

 String get id;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'project_id') String? get projectId; List<RunTargetModel>? get targets; String get url; String get story;@JsonKey(name: 'created_at') int get createdAt;// ⚠️ TS بيقول string مش int!
@JsonKey(name: 'created_at_seconds') double? get createdAtSeconds;@JsonKey(name: 'created_at_iso') String? get createdAtIso;@JsonKey(name: 'overall_status') String get overallStatus;@JsonKey(name: 'goal_achieved') bool? get goalAchieved; bool? get canceled;@JsonKey(name: 'cancel_reason') String? get cancelReason; bool? get paused; int? get passed; int? get failed;@JsonKey(name: 'total_duration_ms') int? get totalDurationMs; String? get summary;@JsonKey(name: 'video_url') String? get videoUrl; List<RunStepModel>? get steps;
/// Create a copy of LatestRunModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatestRunModelCopyWith<LatestRunModel> get copyWith => _$LatestRunModelCopyWithImpl<LatestRunModel>(this as LatestRunModel, _$identity);

  /// Serializes this LatestRunModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatestRunModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other.targets, targets)&&(identical(other.url, url) || other.url == url)&&(identical(other.story, story) || other.story == story)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdAtSeconds, createdAtSeconds) || other.createdAtSeconds == createdAtSeconds)&&(identical(other.createdAtIso, createdAtIso) || other.createdAtIso == createdAtIso)&&(identical(other.overallStatus, overallStatus) || other.overallStatus == overallStatus)&&(identical(other.goalAchieved, goalAchieved) || other.goalAchieved == goalAchieved)&&(identical(other.canceled, canceled) || other.canceled == canceled)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&(identical(other.paused, paused) || other.paused == paused)&&(identical(other.passed, passed) || other.passed == passed)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.totalDurationMs, totalDurationMs) || other.totalDurationMs == totalDurationMs)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&const DeepCollectionEquality().equals(other.steps, steps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,projectId,const DeepCollectionEquality().hash(targets),url,story,createdAt,createdAtSeconds,createdAtIso,overallStatus,goalAchieved,canceled,cancelReason,paused,passed,failed,totalDurationMs,summary,videoUrl,const DeepCollectionEquality().hash(steps)]);

@override
String toString() {
  return 'LatestRunModel(id: $id, userId: $userId, projectId: $projectId, targets: $targets, url: $url, story: $story, createdAt: $createdAt, createdAtSeconds: $createdAtSeconds, createdAtIso: $createdAtIso, overallStatus: $overallStatus, goalAchieved: $goalAchieved, canceled: $canceled, cancelReason: $cancelReason, paused: $paused, passed: $passed, failed: $failed, totalDurationMs: $totalDurationMs, summary: $summary, videoUrl: $videoUrl, steps: $steps)';
}


}

/// @nodoc
abstract mixin class $LatestRunModelCopyWith<$Res>  {
  factory $LatestRunModelCopyWith(LatestRunModel value, $Res Function(LatestRunModel) _then) = _$LatestRunModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'project_id') String? projectId, List<RunTargetModel>? targets, String url, String story,@JsonKey(name: 'created_at') int createdAt,@JsonKey(name: 'created_at_seconds') double? createdAtSeconds,@JsonKey(name: 'created_at_iso') String? createdAtIso,@JsonKey(name: 'overall_status') String overallStatus,@JsonKey(name: 'goal_achieved') bool? goalAchieved, bool? canceled,@JsonKey(name: 'cancel_reason') String? cancelReason, bool? paused, int? passed, int? failed,@JsonKey(name: 'total_duration_ms') int? totalDurationMs, String? summary,@JsonKey(name: 'video_url') String? videoUrl, List<RunStepModel>? steps
});




}
/// @nodoc
class _$LatestRunModelCopyWithImpl<$Res>
    implements $LatestRunModelCopyWith<$Res> {
  _$LatestRunModelCopyWithImpl(this._self, this._then);

  final LatestRunModel _self;
  final $Res Function(LatestRunModel) _then;

/// Create a copy of LatestRunModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? projectId = freezed,Object? targets = freezed,Object? url = null,Object? story = null,Object? createdAt = null,Object? createdAtSeconds = freezed,Object? createdAtIso = freezed,Object? overallStatus = null,Object? goalAchieved = freezed,Object? canceled = freezed,Object? cancelReason = freezed,Object? paused = freezed,Object? passed = freezed,Object? failed = freezed,Object? totalDurationMs = freezed,Object? summary = freezed,Object? videoUrl = freezed,Object? steps = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String?,targets: freezed == targets ? _self.targets : targets // ignore: cast_nullable_to_non_nullable
as List<RunTargetModel>?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,story: null == story ? _self.story : story // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,createdAtSeconds: freezed == createdAtSeconds ? _self.createdAtSeconds : createdAtSeconds // ignore: cast_nullable_to_non_nullable
as double?,createdAtIso: freezed == createdAtIso ? _self.createdAtIso : createdAtIso // ignore: cast_nullable_to_non_nullable
as String?,overallStatus: null == overallStatus ? _self.overallStatus : overallStatus // ignore: cast_nullable_to_non_nullable
as String,goalAchieved: freezed == goalAchieved ? _self.goalAchieved : goalAchieved // ignore: cast_nullable_to_non_nullable
as bool?,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as bool?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,paused: freezed == paused ? _self.paused : paused // ignore: cast_nullable_to_non_nullable
as bool?,passed: freezed == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as int?,failed: freezed == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int?,totalDurationMs: freezed == totalDurationMs ? _self.totalDurationMs : totalDurationMs // ignore: cast_nullable_to_non_nullable
as int?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,steps: freezed == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<RunStepModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LatestRunModel].
extension LatestRunModelPatterns on LatestRunModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatestRunModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatestRunModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatestRunModel value)  $default,){
final _that = this;
switch (_that) {
case _LatestRunModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatestRunModel value)?  $default,){
final _that = this;
switch (_that) {
case _LatestRunModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'project_id')  String? projectId,  List<RunTargetModel>? targets,  String url,  String story, @JsonKey(name: 'created_at')  int createdAt, @JsonKey(name: 'created_at_seconds')  double? createdAtSeconds, @JsonKey(name: 'created_at_iso')  String? createdAtIso, @JsonKey(name: 'overall_status')  String overallStatus, @JsonKey(name: 'goal_achieved')  bool? goalAchieved,  bool? canceled, @JsonKey(name: 'cancel_reason')  String? cancelReason,  bool? paused,  int? passed,  int? failed, @JsonKey(name: 'total_duration_ms')  int? totalDurationMs,  String? summary, @JsonKey(name: 'video_url')  String? videoUrl,  List<RunStepModel>? steps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatestRunModel() when $default != null:
return $default(_that.id,_that.userId,_that.projectId,_that.targets,_that.url,_that.story,_that.createdAt,_that.createdAtSeconds,_that.createdAtIso,_that.overallStatus,_that.goalAchieved,_that.canceled,_that.cancelReason,_that.paused,_that.passed,_that.failed,_that.totalDurationMs,_that.summary,_that.videoUrl,_that.steps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'project_id')  String? projectId,  List<RunTargetModel>? targets,  String url,  String story, @JsonKey(name: 'created_at')  int createdAt, @JsonKey(name: 'created_at_seconds')  double? createdAtSeconds, @JsonKey(name: 'created_at_iso')  String? createdAtIso, @JsonKey(name: 'overall_status')  String overallStatus, @JsonKey(name: 'goal_achieved')  bool? goalAchieved,  bool? canceled, @JsonKey(name: 'cancel_reason')  String? cancelReason,  bool? paused,  int? passed,  int? failed, @JsonKey(name: 'total_duration_ms')  int? totalDurationMs,  String? summary, @JsonKey(name: 'video_url')  String? videoUrl,  List<RunStepModel>? steps)  $default,) {final _that = this;
switch (_that) {
case _LatestRunModel():
return $default(_that.id,_that.userId,_that.projectId,_that.targets,_that.url,_that.story,_that.createdAt,_that.createdAtSeconds,_that.createdAtIso,_that.overallStatus,_that.goalAchieved,_that.canceled,_that.cancelReason,_that.paused,_that.passed,_that.failed,_that.totalDurationMs,_that.summary,_that.videoUrl,_that.steps);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'project_id')  String? projectId,  List<RunTargetModel>? targets,  String url,  String story, @JsonKey(name: 'created_at')  int createdAt, @JsonKey(name: 'created_at_seconds')  double? createdAtSeconds, @JsonKey(name: 'created_at_iso')  String? createdAtIso, @JsonKey(name: 'overall_status')  String overallStatus, @JsonKey(name: 'goal_achieved')  bool? goalAchieved,  bool? canceled, @JsonKey(name: 'cancel_reason')  String? cancelReason,  bool? paused,  int? passed,  int? failed, @JsonKey(name: 'total_duration_ms')  int? totalDurationMs,  String? summary, @JsonKey(name: 'video_url')  String? videoUrl,  List<RunStepModel>? steps)?  $default,) {final _that = this;
switch (_that) {
case _LatestRunModel() when $default != null:
return $default(_that.id,_that.userId,_that.projectId,_that.targets,_that.url,_that.story,_that.createdAt,_that.createdAtSeconds,_that.createdAtIso,_that.overallStatus,_that.goalAchieved,_that.canceled,_that.cancelReason,_that.paused,_that.passed,_that.failed,_that.totalDurationMs,_that.summary,_that.videoUrl,_that.steps);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LatestRunModel implements LatestRunModel {
  const _LatestRunModel({required this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'project_id') this.projectId, final  List<RunTargetModel>? targets, required this.url, required this.story, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'created_at_seconds') this.createdAtSeconds, @JsonKey(name: 'created_at_iso') this.createdAtIso, @JsonKey(name: 'overall_status') required this.overallStatus, @JsonKey(name: 'goal_achieved') this.goalAchieved, this.canceled, @JsonKey(name: 'cancel_reason') this.cancelReason, this.paused, this.passed, this.failed, @JsonKey(name: 'total_duration_ms') this.totalDurationMs, this.summary, @JsonKey(name: 'video_url') this.videoUrl, final  List<RunStepModel>? steps}): _targets = targets,_steps = steps;
  factory _LatestRunModel.fromJson(Map<String, dynamic> json) => _$LatestRunModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'project_id') final  String? projectId;
 final  List<RunTargetModel>? _targets;
@override List<RunTargetModel>? get targets {
  final value = _targets;
  if (value == null) return null;
  if (_targets is EqualUnmodifiableListView) return _targets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String url;
@override final  String story;
@override@JsonKey(name: 'created_at') final  int createdAt;
// ⚠️ TS بيقول string مش int!
@override@JsonKey(name: 'created_at_seconds') final  double? createdAtSeconds;
@override@JsonKey(name: 'created_at_iso') final  String? createdAtIso;
@override@JsonKey(name: 'overall_status') final  String overallStatus;
@override@JsonKey(name: 'goal_achieved') final  bool? goalAchieved;
@override final  bool? canceled;
@override@JsonKey(name: 'cancel_reason') final  String? cancelReason;
@override final  bool? paused;
@override final  int? passed;
@override final  int? failed;
@override@JsonKey(name: 'total_duration_ms') final  int? totalDurationMs;
@override final  String? summary;
@override@JsonKey(name: 'video_url') final  String? videoUrl;
 final  List<RunStepModel>? _steps;
@override List<RunStepModel>? get steps {
  final value = _steps;
  if (value == null) return null;
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LatestRunModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatestRunModelCopyWith<_LatestRunModel> get copyWith => __$LatestRunModelCopyWithImpl<_LatestRunModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LatestRunModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatestRunModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other._targets, _targets)&&(identical(other.url, url) || other.url == url)&&(identical(other.story, story) || other.story == story)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdAtSeconds, createdAtSeconds) || other.createdAtSeconds == createdAtSeconds)&&(identical(other.createdAtIso, createdAtIso) || other.createdAtIso == createdAtIso)&&(identical(other.overallStatus, overallStatus) || other.overallStatus == overallStatus)&&(identical(other.goalAchieved, goalAchieved) || other.goalAchieved == goalAchieved)&&(identical(other.canceled, canceled) || other.canceled == canceled)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&(identical(other.paused, paused) || other.paused == paused)&&(identical(other.passed, passed) || other.passed == passed)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.totalDurationMs, totalDurationMs) || other.totalDurationMs == totalDurationMs)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&const DeepCollectionEquality().equals(other._steps, _steps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,projectId,const DeepCollectionEquality().hash(_targets),url,story,createdAt,createdAtSeconds,createdAtIso,overallStatus,goalAchieved,canceled,cancelReason,paused,passed,failed,totalDurationMs,summary,videoUrl,const DeepCollectionEquality().hash(_steps)]);

@override
String toString() {
  return 'LatestRunModel(id: $id, userId: $userId, projectId: $projectId, targets: $targets, url: $url, story: $story, createdAt: $createdAt, createdAtSeconds: $createdAtSeconds, createdAtIso: $createdAtIso, overallStatus: $overallStatus, goalAchieved: $goalAchieved, canceled: $canceled, cancelReason: $cancelReason, paused: $paused, passed: $passed, failed: $failed, totalDurationMs: $totalDurationMs, summary: $summary, videoUrl: $videoUrl, steps: $steps)';
}


}

/// @nodoc
abstract mixin class _$LatestRunModelCopyWith<$Res> implements $LatestRunModelCopyWith<$Res> {
  factory _$LatestRunModelCopyWith(_LatestRunModel value, $Res Function(_LatestRunModel) _then) = __$LatestRunModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'project_id') String? projectId, List<RunTargetModel>? targets, String url, String story,@JsonKey(name: 'created_at') int createdAt,@JsonKey(name: 'created_at_seconds') double? createdAtSeconds,@JsonKey(name: 'created_at_iso') String? createdAtIso,@JsonKey(name: 'overall_status') String overallStatus,@JsonKey(name: 'goal_achieved') bool? goalAchieved, bool? canceled,@JsonKey(name: 'cancel_reason') String? cancelReason, bool? paused, int? passed, int? failed,@JsonKey(name: 'total_duration_ms') int? totalDurationMs, String? summary,@JsonKey(name: 'video_url') String? videoUrl, List<RunStepModel>? steps
});




}
/// @nodoc
class __$LatestRunModelCopyWithImpl<$Res>
    implements _$LatestRunModelCopyWith<$Res> {
  __$LatestRunModelCopyWithImpl(this._self, this._then);

  final _LatestRunModel _self;
  final $Res Function(_LatestRunModel) _then;

/// Create a copy of LatestRunModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? projectId = freezed,Object? targets = freezed,Object? url = null,Object? story = null,Object? createdAt = null,Object? createdAtSeconds = freezed,Object? createdAtIso = freezed,Object? overallStatus = null,Object? goalAchieved = freezed,Object? canceled = freezed,Object? cancelReason = freezed,Object? paused = freezed,Object? passed = freezed,Object? failed = freezed,Object? totalDurationMs = freezed,Object? summary = freezed,Object? videoUrl = freezed,Object? steps = freezed,}) {
  return _then(_LatestRunModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String?,targets: freezed == targets ? _self._targets : targets // ignore: cast_nullable_to_non_nullable
as List<RunTargetModel>?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,story: null == story ? _self.story : story // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,createdAtSeconds: freezed == createdAtSeconds ? _self.createdAtSeconds : createdAtSeconds // ignore: cast_nullable_to_non_nullable
as double?,createdAtIso: freezed == createdAtIso ? _self.createdAtIso : createdAtIso // ignore: cast_nullable_to_non_nullable
as String?,overallStatus: null == overallStatus ? _self.overallStatus : overallStatus // ignore: cast_nullable_to_non_nullable
as String,goalAchieved: freezed == goalAchieved ? _self.goalAchieved : goalAchieved // ignore: cast_nullable_to_non_nullable
as bool?,canceled: freezed == canceled ? _self.canceled : canceled // ignore: cast_nullable_to_non_nullable
as bool?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,paused: freezed == paused ? _self.paused : paused // ignore: cast_nullable_to_non_nullable
as bool?,passed: freezed == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as int?,failed: freezed == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int?,totalDurationMs: freezed == totalDurationMs ? _self.totalDurationMs : totalDurationMs // ignore: cast_nullable_to_non_nullable
as int?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,steps: freezed == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<RunStepModel>?,
  ));
}


}

// dart format on
