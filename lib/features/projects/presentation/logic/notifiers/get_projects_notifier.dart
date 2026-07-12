import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/core/network/connectivity_provider.dart';
import 'package:test_agent_mobile/features/projects/domain/entities/projects_result.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';

class ProjectsListNotifier extends AsyncNotifier<ProjectsResult> {
  bool? _wasConnected;

  @override
  Future<ProjectsResult> build() async {
    ref.listen<AsyncValue<bool>>(connectivityStreamProvider, (previous, next) {
      final isConnected = next.value;
      if (isConnected == null) return;

      if (_wasConnected == false && isConnected == true) {
        refresh();
      }
      _wasConnected = isConnected;
    });

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
    AsyncNotifierProvider<ProjectsListNotifier, ProjectsResult>(
  ProjectsListNotifier.new,
);