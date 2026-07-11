import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/auth_provider.dart';
import 'package:test_agent_mobile/features/projects/data/datasources/project_remote_data_source.dart';
import 'package:test_agent_mobile/features/projects/data/repo_impl/projects_repo_impl.dart';
import 'package:test_agent_mobile/features/projects/domain/use_cases/create_project_use_case.dart';
import 'package:test_agent_mobile/features/projects/domain/use_cases/get_all_projects_use_case.dart';

final projectRemoteDataSourceProvider = Provider<ProjectRemoteDataSourceImpl>((
  ref,
) {
  final apiService = ref.watch(apiProvider);
  return ProjectRemoteDataSourceImpl(apiService: apiService);
});

final projectRepoProvider = Provider<ProjectsRepoImpl>((ref) {
  final projectRemoteDataSource = ref.watch(projectRemoteDataSourceProvider);
  return ProjectsRepoImpl(projectRemoteDataSource: projectRemoteDataSource);
});

final createProjectUsecase = Provider<CreateProjectUseCase>((ref) {
  final projectRepo = ref.watch(projectRepoProvider);
  return CreateProjectUseCase(projectsRepo: projectRepo);
});

final getProjectsUseCase = Provider<GetAllProjectsUseCase>((ref) {
  final projectRepo = ref.watch(projectRepoProvider);
  return GetAllProjectsUseCase(projectsRepo: projectRepo);
});

final searchQueryProvider = StateProvider<String>((ref) => '');