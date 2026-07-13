import 'package:test_agent_mobile/core/local_storage/app_database.dart';
import 'package:test_agent_mobile/core/local_storage/daos/runs_dao.dart';
import 'package:test_agent_mobile/core/run/data/mapper/run_mapper.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/latest_run_model.dart';

abstract class RunLocalDataSource {
  Future<List<LatestRunModel>> getAll();
  Future<List<LatestRunModel>> getLatest(int limit);
  Future<List<LatestRunModel>> getByProject(String projectId);
  Future<LatestRunModel?> getById(String id);
  Future<void> cacheRuns(List<LatestRunModel> runs);
  Future<void> clearAll();
}

class RunLocalDataSourceImpl implements RunLocalDataSource {
  final RunsDao dao;

  RunLocalDataSourceImpl({required this.dao});

  @override
  Future<List<LatestRunModel>> getAll() async {
    final rows = await dao.getAll();
    return _toModels(rows);
  }

  @override
  Future<List<LatestRunModel>> getLatest(int limit) async {
    final rows = await dao.getLatest(limit);
    return _toModels(rows);
  }

  @override
  Future<List<LatestRunModel>> getByProject(String projectId) async {
    final rows = await dao.getByProject(projectId);
    return _toModels(rows);
  }

  @override
  Future<LatestRunModel?> getById(String id) async {
    final row = await dao.getById(id);
    if (row == null) return null;
    final targets = await dao.getTargetsForRun(id);
    final steps = await dao.getStepsForRun(id);
    return row.toModel(targetRows: targets, stepRows: steps);
  }

  Future<List<LatestRunModel>> _toModels(List<Run> rows) async {
    final models = <LatestRunModel>[];
    for (final row in rows) {
      final targets = await dao.getTargetsForRun(row.id);
      final steps = await dao.getStepsForRun(row.id);
      models.add(row.toModel(targetRows: targets, stepRows: steps));
    }
    return models;
  }

  @override
  Future<void> cacheRuns(List<LatestRunModel> runsList) async {
    for (final run in runsList) {
      await dao.upsertRunWithDetails(
        run: run.toRunsCompanion(),
        targets: run.toTargetCompanions(),
        steps: run.toStepCompanions(),
      );
    }
  }

  @override
  Future<void> clearAll() => dao.clearAll();
}