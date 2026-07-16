// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_run_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LatestRunModel _$LatestRunModelFromJson(Map<String, dynamic> json) =>
    _LatestRunModel(
      id: json['id'] as String,
      userId: json['user_id'] as String?,
      projectId: json['project_id'] as String?,
      targets: (json['targets'] as List<dynamic>?)
          ?.map((e) => RunTargetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
      story: json['story'] as String,
      createdAt: (json['created_at'] as num).toInt(),
      createdAtSeconds: (json['created_at_seconds'] as num?)?.toDouble(),
      createdAtIso: json['created_at_iso'] as String?,
      overallStatus: json['overall_status'] as String,
      goalAchieved: json['goal_achieved'] as bool?,
      canceled: json['canceled'] as bool?,
      cancelReason: json['cancel_reason'] as String?,
      paused: json['paused'] as bool?,
      passed: (json['passed'] as num?)?.toInt(),
      failed: (json['failed'] as num?)?.toInt(),
      totalDurationMs: (json['total_duration_ms'] as num?)?.toInt(),
      summary: json['summary'] as String?,
      videoUrl: json['video_url'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => RunStepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LatestRunModelToJson(_LatestRunModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'project_id': instance.projectId,
      'targets': instance.targets,
      'url': instance.url,
      'story': instance.story,
      'created_at': instance.createdAt,
      'created_at_seconds': instance.createdAtSeconds,
      'created_at_iso': instance.createdAtIso,
      'overall_status': instance.overallStatus,
      'goal_achieved': instance.goalAchieved,
      'canceled': instance.canceled,
      'cancel_reason': instance.cancelReason,
      'paused': instance.paused,
      'passed': instance.passed,
      'failed': instance.failed,
      'total_duration_ms': instance.totalDurationMs,
      'summary': instance.summary,
      'video_url': instance.videoUrl,
      'steps': instance.steps,
    };
