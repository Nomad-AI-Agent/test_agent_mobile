import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/get_projects_notifier.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';
class CreateProjectNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<bool> createProject({
    required CreateProjectModel createProjectModel,
  }) async {
    state = const AsyncLoading();

    final usecase = ref.read(createProjectUsecase);

    state = await AsyncValue.guard(() async {
      await usecase.execute(createProjectModel);
    });

    if (!state.hasError) {
      await ref.read(projectsListProvider.notifier).refresh();
      return true;
    }
    return false;
  }
}

final createProjectNotifierProvider =
    AsyncNotifierProvider<CreateProjectNotifier, void>(
  CreateProjectNotifier.new,
);