import 'package:test_agent_mobile/core/network/api_error_handler.dart';
import 'package:test_agent_mobile/core/network/api_result.dart';
import 'package:test_agent_mobile/core/network/api_service.dart';
import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

abstract class ProjectRemoteDataSource {
  Future<ApiResult<List<ProjectModel>>> getProjects();
  Future<ApiResult<void>> createProject(CreateProjectModel createProjectModel);
}

class ProjectRemoteDataSourceImpl extends ProjectRemoteDataSource {
  final ApiService apiService;

  ProjectRemoteDataSourceImpl({required this.apiService});

  @override
  Future<ApiResult<void>> createProject(
    CreateProjectModel createProjectModel,
  ) async {
 
    try {
      await apiService.createProject(createProjectModel.toJson());
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<List<ProjectModel>>> getProjects() async {
    try {
      final projects = await apiService.getProjects();
      return ApiResult.success(projects);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.handle(e));
    }
  }
}