import 'package:test_agent_mobile/core/network/api_error_model.dart';
import 'package:test_agent_mobile/core/network/api_exception.dart';
import 'package:test_agent_mobile/core/network/local_status_codes.dart';
import 'package:test_agent_mobile/core/services/connectivity_service.dart';
import 'package:test_agent_mobile/features/projects/data/datasources/project_local_data_srouce.dart';
import 'package:test_agent_mobile/features/projects/data/datasources/project_remote_data_source.dart';
import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/domain/entities/projects_result.dart'
    show ProjectsResult, ProjectsSource;
import 'package:test_agent_mobile/features/projects/domain/repo/projects_repo.dart';

class ProjectsRepoImpl extends ProjectsRepo {
  final ProjectRemoteDataSource remote;
  final ProjectLocalDataSource local;
  final ConnectivityService connectivity;

  ProjectsRepoImpl({
    required this.remote,
    required this.local,
    required this.connectivity,
  });

  @override
  Future<void> createProject(CreateProjectModel createProjectModel) async {
    final result = await remote.createProject(createProjectModel);
    return result.when(
      onSuccess: (_) {},
      onError: (error) => throw ApiException(error),
    );
  }

  @override
  Future<ProjectsResult> getProjects() async {
    final hasConnection = await connectivity.isConnected;

    if (!hasConnection) {
      return _fromCacheOrThrowNoInternet();
    }

    final result = await remote.getProjects();
    return result.when(
      onSuccess: (data) async {
        await local.cacheProjects(data);
        return ProjectsResult(projects: data, source: ProjectsSource.network);
      },
      onError: (error) async {
        final cached = await local.getAll();
        if (cached.isNotEmpty) {
          return ProjectsResult(projects: cached, source: ProjectsSource.cache);
        }
        throw ApiException(error);
      },
    );
  }

  Future<ProjectsResult> _fromCacheOrThrowNoInternet() async {
    final cached = await local.getAll();
    if (cached.isNotEmpty) {
      return ProjectsResult(projects: cached, source: ProjectsSource.cache);
    }
    throw const ApiException(
      ApiErrorModel(
        statusCode: LocalStatusCodes.connectionError,
        type: ApiErrorType.connectionError,
        message: 'No internet connection.',
      ),
    );
  }
}
