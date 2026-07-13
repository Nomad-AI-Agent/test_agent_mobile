// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RunStepModel _$RunStepModelFromJson(Map<String, dynamic> json) =>
    _RunStepModel(
      index: (json['index'] as num).toInt(),
      action: json['action'] as String,
      description: json['description'] as String,
      target: json['target'] as String,
      value: json['value'] as String?,
      status: json['status'] as String,
      error: json['error'] as String?,
      durationMs: (json['duration_ms'] as num).toInt(),
      screenshot: json['screenshot'] as String?,
      targetIndex: (json['target_index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RunStepModelToJson(_RunStepModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'action': instance.action,
      'description': instance.description,
      'target': instance.target,
      'value': instance.value,
      'status': instance.status,
      'error': instance.error,
      'duration_ms': instance.durationMs,
      'screenshot': instance.screenshot,
      'target_index': instance.targetIndex,
    };
