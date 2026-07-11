import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';

class ProjectsListNotifier extends AsyncNotifier<List<ProjectModel>> {
  @override
  Future<List<ProjectModel>> build() async {
    final usecase = ref.watch(getProjectsUseCase);
    return usecase.execute();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(getProjectsUseCase);
      return usecase.execute();
    });
  }
}

final projectsListProvider =
    AsyncNotifierProvider<ProjectsListNotifier, List<ProjectModel>>(
  ProjectsListNotifier.new,
);