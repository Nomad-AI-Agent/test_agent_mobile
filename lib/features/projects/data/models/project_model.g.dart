// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) =>
    _ProjectModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      runsCount: (json['runsCount'] as num).toInt(),
      lastRunDate: DateTime.parse(json['lastRunDate'] as String),
      userid: json['user_id'] as String?,
    );

Map<String, dynamic> _$ProjectModelToJson(_ProjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'runsCount': instance.runsCount,
      'lastRunDate': instance.lastRunDate.toIso8601String(),
      'user_id': instance.userid,
    };
