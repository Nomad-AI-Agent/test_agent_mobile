// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardStatusModel _$DashboardStatusModelFromJson(
  Map<String, dynamic> json,
) => _DashboardStatusModel(
  total: (json['total'] as num).toInt(),
  successRate: json['successRate'] as String,
  avgDur: json['avgDur'] as String,
  runsLast24h: (json['runsLast24h'] as num).toInt(),
);

Map<String, dynamic> _$DashboardStatusModelToJson(
  _DashboardStatusModel instance,
) => <String, dynamic>{
  'total': instance.total,
  'successRate': instance.successRate,
  'avgDur': instance.avgDur,
  'runsLast24h': instance.runsLast24h,
};
