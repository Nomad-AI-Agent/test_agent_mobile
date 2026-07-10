import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';
import 'package:test_agent_mobile/features/projects/domain/entities/project_data.dart';

extension ProjectModelMapper on ProjectModel {
  ProjectData toEntity() {
    return ProjectData(
      id: id,
      name: name,
      description: description??"",
      runsCount: runsCount,
      lastRunDate: lastRunDate,
    );
  }
}