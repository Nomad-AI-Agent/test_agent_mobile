import 'package:test_agent_mobile/core/network/api_exception.dart';
import 'package:test_agent_mobile/features/projects/data/datasources/project_remote_data_source.dart';
import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';
import 'package:test_agent_mobile/features/projects/domain/repo/projects_repo.dart';

class ProjectsRepoImpl extends ProjectsRepo {
  final ProjectRemoteDataSource projectRemoteDataSource;
  ProjectsRepoImpl({required this.projectRemoteDataSource});

  @override
  Future<void> createProject(CreateProjectModel createProjectModel) async {
    final result = await projectRemoteDataSource.createProject(
      createProjectModel,
    );
    return result.when(
      onSuccess: (_) {},
      onError: (error) => throw ApiException(error),
    );
  }

  @override
  Future<List<ProjectModel>> getProjects() async {
    final result = await projectRemoteDataSource.getProjects();
    return result.when(
      onSuccess: (data) => data,
      onError: (error) => throw ApiException(error),
    );
  }
}
