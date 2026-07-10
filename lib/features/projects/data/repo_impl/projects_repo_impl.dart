import 'package:test_agent_mobile/features/projects/data/datasources/project_remote_data_source.dart';
import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';
import 'package:test_agent_mobile/features/projects/domain/repo/projects_repo.dart';

class ProjectsRepoImpl extends ProjectsRepo {
  ProjectRemoteDataSource projectRemoteDataSource;
  ProjectsRepoImpl({required this.projectRemoteDataSource});
  @override
  Future<void> createProject(CreateProjectModel createProjectModel) async {
    await projectRemoteDataSource.createProject(createProjectModel);
  }

  @override
  Future<List<ProjectModel>> getProjects() async {
    final response = await projectRemoteDataSource.getProjects();
    return response.toList();
  }
}
