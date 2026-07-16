// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RunStepModel _$RunStepModelFromJson(Map<String, dynamic> json) =>
    _RunStepModel(
      stepIndex: (json['step_index'] as num?)?.toInt(),
      index: (json['index'] as num?)?.toInt(),
      action: json['action'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      error: json['error'] as String?,
      target: json['target'] as String?,
      value: const DynamicToStringConverter().fromJson(json['value']),
      screenshot: json['screenshot'] as String?,
      targetIndex: (json['target_index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RunStepModelToJson(_RunStepModel instance) =>
    <String, dynamic>{
      'step_index': instance.stepIndex,
      'index': instance.index,
      'action': instance.action,
      'description': instance.description,
      'status': instance.status,
      'duration_ms': instance.durationMs,
      'error': instance.error,
      'target': instance.target,
      'value': const DynamicToStringConverter().toJson(instance.value),
      'screenshot': instance.screenshot,
      'target_index': instance.targetIndex,
    };
