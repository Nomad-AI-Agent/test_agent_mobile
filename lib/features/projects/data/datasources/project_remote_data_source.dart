import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

abstract class ProjectRemoteDataSource {
  Future<List<ProjectModel>> getProjects();
  Future<void> createProject(String name, String description);
}
