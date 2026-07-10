import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';

class CreateProjectNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> createProject({
    required CreateProjectModel createProjectModel,
  }) async {
    state = const AsyncLoading();

    final usecase = ref.read(createProjectUsecase);

    state = await AsyncValue.guard(() async {
      await usecase.execute(createProjectModel);
    });
  }
}

final createProjectNotifierProvider =
    AsyncNotifierProvider<CreateProjectNotifier, void>(
      CreateProjectNotifier.new,
    );
