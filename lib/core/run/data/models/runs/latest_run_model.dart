import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/run_step_model.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/run_target_model.dart';

part 'latest_run_model.freezed.dart';
part 'latest_run_model.g.dart';

@freezed
 abstract class LatestRunModel with _$LatestRunModel {
  const factory LatestRunModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'project_id') required String projectId,
    required List<RunTargetModel> targets,
    required String url,
    required String story,
    @JsonKey(name: 'created_at') required int createdAt,
    @JsonKey(name: 'created_at_seconds') required double createdAtSeconds,
    @JsonKey(name: 'created_at_iso') required String createdAtIso,
    @JsonKey(name: 'overall_status') required String overallStatus,
    @JsonKey(name: 'goal_achieved') required bool goalAchieved,
    required bool canceled,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
    required bool paused,
    required int passed,
    required int failed,
    @JsonKey(name: 'total_duration_ms') required int totalDurationMs,
    required String summary,
    @JsonKey(name: 'video_url') required String videoUrl,
    required List<RunStepModel> steps,
  }) = _LatestRunModel;

  factory LatestRunModel.fromJson(Map<String, dynamic> json) =>
      _$LatestRunModelFromJson(json);
}