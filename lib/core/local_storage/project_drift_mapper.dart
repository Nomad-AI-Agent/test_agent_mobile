import 'package:drift/drift.dart';
import 'package:test_agent_mobile/core/local_storage/app_database.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

extension ProjectModelToDrift on ProjectModel {
  ProjectsCompanion toCompanion() {
    return ProjectsCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
      runsCount: Value(runsCount),
      lastRunDate: Value(lastRunDate),
      userId: Value(userid),
      cachedAt: Value(DateTime.now()),
    );
  }
}

extension ProjectRowToModel on Project {
  ProjectModel toModel() {
    return ProjectModel(
      id: id,
      name: name,
      description: description,
      runsCount: runsCount,
      lastRunDate: lastRunDate,
      userid: userId,
    );
  }
}