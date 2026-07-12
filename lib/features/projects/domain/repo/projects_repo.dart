import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/domain/entities/projects_result.dart';

abstract class ProjectsRepo {
  Future<ProjectsResult> getProjects();
  Future<void> createProject(CreateProjectModel createProjectModel);
}