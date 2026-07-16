import 'package:drift/drift.dart';
import 'package:test_agent_mobile/core/local_storage/app_database.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/latest_run_model.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/run_step_model.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/run_target_model.dart';

extension LatestRunModelToDrift on LatestRunModel {
  RunsCompanion toRunsCompanion() {
    return RunsCompanion(
      id: Value(id),
      projectId: Value(
        (projectId == null || projectId!.isEmpty) ? null : projectId,
      ),
      story: Value(story),
      url: Value(url),
      createdAt: Value(
        DateTime.fromMillisecondsSinceEpoch(createdAt, isUtc: true),
      ),
      overallStatus: Value(overallStatus),
      goalAchieved: Value(goalAchieved ?? false),
      totalDurationMs: Value(totalDurationMs ?? 0),
      passed: Value(passed ?? 0),
      failed: Value(failed ?? 0),
      summary: Value(summary ?? ''),
      canceled: Value(canceled ?? false),
      cancelReason: Value(cancelReason),
      paused: Value(paused ?? false),
      cachedAt: Value(DateTime.now()),
    );
  }

  List<RunTargetsCompanion> toTargetCompanions() {
    return (targets ?? [])
        .map(
          (t) => RunTargetsCompanion(
            runId: Value(id),
            url: Value(t.url),
            role: Value(t.role),
          ),
        )
        .toList();
  }

  List<RunStepsCompanion> toStepCompanions() {
    return (steps ?? [])
        .map(
          (s) => RunStepsCompanion(
            runId: Value(id),
            stepIndex: Value(s.index ?? s.stepIndex ?? 0),
            action: Value(s.action ?? ''),
            description: Value(s.description ?? ''),
            target: Value(s.target),
            value: Value(s.value),
            status: Value(s.status ?? ''),
            error: Value(s.error),
            durationMs: Value(s.durationMs ?? 0),
            screenshotPath: Value(s.screenshot),
            targetIndex: Value(s.targetIndex),
          ),
        )
        .toList();
  }
}

extension RunRowToModel on Run {
  LatestRunModel toModel({
    required List<RunTarget> targetRows,
    required List<RunStep> stepRows,
  }) {
    return LatestRunModel(
      id: id,
      userId: '',
      projectId: projectId ?? '',
      targets: targetRows
          .map((t) => RunTargetModel(url: t.url, role: t.role))
          .toList(),
      url: url,
      story: story,
      createdAt: createdAt.millisecondsSinceEpoch,
      createdAtSeconds: createdAt.millisecondsSinceEpoch / 1000,
      createdAtIso: createdAt.toIso8601String(),
      overallStatus: overallStatus,
      goalAchieved: goalAchieved ?? false,
      canceled: canceled ?? false,
      cancelReason: cancelReason,
      paused: paused ?? false,
      passed: passed ?? 0,
      failed: failed ?? 0,
      totalDurationMs: totalDurationMs ?? 0,
      summary: summary ?? '',
      videoUrl: '',
      steps: stepRows
          .map(
            (s) => RunStepModel(
              index: s.stepIndex ?? 0,
              action: s.action ?? '',
              description: s.description ?? '',
              target: s.target ?? '',
              value: s.value,
              status: s.status ?? '',
              error: s.error,
              durationMs: s.durationMs ?? 0,
              screenshot: s.screenshotPath,
              targetIndex: s.targetIndex,
            ),
          )
          .toList(),
    );
  }
}