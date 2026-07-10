// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateProjectModel _$CreateProjectModelFromJson(Map<String, dynamic> json) =>
    _CreateProjectModel(
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateProjectModelToJson(_CreateProjectModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };
