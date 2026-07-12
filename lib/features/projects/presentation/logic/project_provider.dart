import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/auth_provider.dart';
import 'package:test_agent_mobile/features/projects/data/datasources/project_remote_data_source.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';
import 'package:test_agent_mobile/features/projects/data/repo_impl/projects_repo_impl.dart';
import 'package:test_agent_mobile/features/projects/domain/entities/projects_page_data.dart';
import 'package:test_agent_mobile/features/projects/domain/use_cases/create_project_use_case.dart';
import 'package:test_agent_mobile/features/projects/domain/use_cases/get_all_projects_use_case.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/get_projects_notifier.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/project_pagination_notifier.dart';

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

final filteredProjectsProvider = Provider<List<ProjectModel>>((ref) {
  final allProjects = ref.watch(projectsListProvider).value ?? [];
  final query = ref.watch(searchQueryProvider).trim().toLowerCase();

  if (query.isEmpty) return allProjects;
  return allProjects
      .where((p) => p.name.toLowerCase().contains(query))
      .toList();
});

final projectsPageDataProvider = Provider<ProjectsPageData>((ref) {
  final allProjects = ref.watch(projectsListProvider).value ?? [];
  final filtered = ref.watch(filteredProjectsProvider);
  final currentPage = ref.watch(projectsPaginationProvider);

  final totalPages = filtered.isEmpty
      ? 1
      : (filtered.length / projectsPageSize).ceil();
  final safePage = currentPage > totalPages ? totalPages : currentPage;

  final startIndex = (safePage - 1) * projectsPageSize;
  final endIndex = (startIndex + projectsPageSize).clamp(0, filtered.length);
  final pageItems = filtered.isEmpty
      ? <ProjectModel>[]
      : filtered.sublist(startIndex, endIndex);

  return ProjectsPageData(
    pageItems: pageItems,
    totalPages: totalPages,
    currentPage: safePage,
    hasProjects: allProjects.isNotEmpty,
    hasMatches: filtered.isNotEmpty,
  );
});
