import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_status_model.freezed.dart';
part 'dashboard_status_model.g.dart';

@freezed
abstract class DashboardStatusModel with _$DashboardStatusModel {
  const factory DashboardStatusModel({
    required int total,
    required String successRate,
    required String avgDur,
    required int runsLast24h,
  }) = _DashboardStatusModel;

  factory DashboardStatusModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatusModelFromJson(json);
}