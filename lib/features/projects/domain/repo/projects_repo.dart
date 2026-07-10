import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

abstract class ProjectsRepo {
  Future<List<ProjectModel>> getProjects();
  Future<void> createProject(CreateProjectModel createProjectModel);
}