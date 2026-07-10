import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';

const int _pageSize = 6;

class ProjectsListState {
  final List<ProjectModel> allProjects;
  final int visibleCount;

  const ProjectsListState({
    this.allProjects = const [],
    this.visibleCount = _pageSize,
  });

  List<ProjectModel> get visibleProjects =>
      allProjects.take(visibleCount).toList();

  bool get hasMore => visibleCount < allProjects.length;

  ProjectsListState copyWith({
    List<ProjectModel>? allProjects,
    int? visibleCount,
  }) {
    return ProjectsListState(
      allProjects: allProjects ?? this.allProjects,
      visibleCount: visibleCount ?? this.visibleCount,
    );
  }
}

class ProjectsListNotifier extends AsyncNotifier<ProjectsListState> {
  @override
  Future<ProjectsListState> build() async {
    final usecase = ref.watch(getProjectsUseCase);
    final projects = await usecase.execute();
    return ProjectsListState(allProjects: projects);
  }

  void loadMore() {
    final current = state.value;
    if (current == null || !current.hasMore) return;

    state = AsyncData(
      current.copyWith(visibleCount: current.visibleCount + _pageSize),
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(getProjectsUseCase);
      final projects = await usecase.execute();
      return ProjectsListState(allProjects: projects);
    });
  }
}

final projectsListProvider =
    AsyncNotifierProvider<ProjectsListNotifier, ProjectsListState>(
      ProjectsListNotifier.new,
    );
