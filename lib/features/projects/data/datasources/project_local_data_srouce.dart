import 'package:test_agent_mobile/core/local_storage/daos/projects_dao.dart';
import 'package:test_agent_mobile/core/local_storage/project_drift_mapper.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

abstract class ProjectLocalDataSource {
  Stream<List<ProjectModel>> watchAll();
  Future<List<ProjectModel>> getAll();
  Future<void> cacheProjects(List<ProjectModel> projects);
  Future<void> clearAll();
}

class ProjectLocalDataSourceImpl implements ProjectLocalDataSource {
  final ProjectsDao dao;
  ProjectLocalDataSourceImpl({required this.dao});

  @override
  Stream<List<ProjectModel>> watchAll() =>
      dao.watchAll().map((rows) => rows.map((r) => r.toModel()).toList());

  @override
  Future<List<ProjectModel>> getAll() async =>
      (await dao.getAll()).map((r) => r.toModel()).toList();

  @override
  Future<void> cacheProjects(List<ProjectModel> projects) =>
      dao.upsertAll(projects.map((p) => p.toCompanion()).toList());

  @override
  Future<void> clearAll() => dao.clearAll();
}