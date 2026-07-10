import 'package:test_agent_mobile/core/network/api_service.dart';
import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

abstract class ProjectRemoteDataSource {
  Future<List<ProjectModel>> getProjects();
  Future<void> createProject(CreateProjectModel createProjectModel);
}

class ProjectRemoteDataSourceImpl extends ProjectRemoteDataSource {
  final ApiService apiService;

  ProjectRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> createProject(CreateProjectModel createProjectModel) async {
    await apiService.createProject(createProjectModel);
  }

  @override
  Future<List<ProjectModel>> getProjects() async {
    return await apiService.getProjects();
  }
}
