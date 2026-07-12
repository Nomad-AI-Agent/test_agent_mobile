import 'package:drift/drift.dart';
import 'package:test_agent_mobile/core/local_storage/app_database.dart';
import 'package:test_agent_mobile/core/local_storage/tables/run_strps_table.dart';
import 'package:test_agent_mobile/core/local_storage/tables/run_targets_table.dart';
import 'package:test_agent_mobile/core/local_storage/tables/runs_table.dart';


part 'runs_dao.g.dart';

@DriftAccessor(tables: [Runs, RunTargets, RunSteps])
class RunsDao extends DatabaseAccessor<AppDatabase> with _$RunsDaoMixin {
  RunsDao(super.db);

  Stream<List<Run>> watchByProject(String projectId) {
    return (select(runs)
          ..where((t) => t.projectId.equals(projectId))
          ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
        .watch();
  }

  Future<List<Run>> getByProject(String projectId) {
    return (select(runs)
          ..where((t) => t.projectId.equals(projectId))
          ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
        .get();
  }

  Future<Run?> getById(String id) {
    return (select(runs)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<List<RunTarget>> getTargetsForRun(String runId) {
    return (select(runTargets)..where((t) => t.runId.equals(runId))).get();
  }

  Future<List<RunStep>> getStepsForRun(String runId) {
    return (select(runSteps)
          ..where((t) => t.runId.equals(runId))
          ..orderBy([(t) => OrderingTerm.asc(t.stepIndex)]))
        .get();
  }


  Future<void> upsertRunWithDetails({
    required RunsCompanion run,
    required List<RunTargetsCompanion> targets,
    required List<RunStepsCompanion> steps,
  }) async {
    final runId = run.id.value;
    await transaction(() async {
      await into(runs).insertOnConflictUpdate(run);

      await (delete(runTargets)..where((t) => t.runId.equals(runId))).go();
      await (delete(runSteps)..where((t) => t.runId.equals(runId))).go();

      if (targets.isNotEmpty) {
        await batch((b) => b.insertAll(runTargets, targets));
      }
      if (steps.isNotEmpty) {
        await batch((b) => b.insertAll(runSteps, steps));
      }
    });
  }

  Future<void> deleteByProject(String projectId) {
    return (delete(runs)..where((t) => t.projectId.equals(projectId))).go();
  }

  Future<void> clearAll() => delete(runs).go();
}