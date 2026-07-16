import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/run_step_model.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/run_target_model.dart';

part 'latest_run_model.freezed.dart';
part 'latest_run_model.g.dart';

@freezed
abstract class LatestRunModel with _$LatestRunModel {
  const factory LatestRunModel({
    required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'project_id') String? projectId,
    List<RunTargetModel>? targets,
    required String url,
    required String story,
    @JsonKey(name: 'created_at') required int createdAt,   // ⚠️ TS بيقول string مش int!
    @JsonKey(name: 'created_at_seconds') double? createdAtSeconds,
    @JsonKey(name: 'created_at_iso') String? createdAtIso,
    @JsonKey(name: 'overall_status') required String overallStatus,
    @JsonKey(name: 'goal_achieved') bool? goalAchieved,
    bool? canceled,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
    bool? paused,
    int? passed,
    int? failed,
    @JsonKey(name: 'total_duration_ms') int? totalDurationMs,
    String? summary,
    @JsonKey(name: 'video_url') String? videoUrl,
    List<RunStepModel>? steps,
  }) = _LatestRunModel;

  factory LatestRunModel.fromJson(Map<String, dynamic> json) =>
      _$LatestRunModelFromJson(json);
}