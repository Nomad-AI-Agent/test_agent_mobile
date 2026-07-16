import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/core/network/connectivity_provider.dart';
import 'package:test_agent_mobile/core/run/domain/entity/runs_result.dart';
import 'package:test_agent_mobile/core/run/presentation/run_provider.dart';

class LatestRunsNotifier extends AsyncNotifier<RunsResult> {
  bool? _wasConnected;

  @override
  Future<RunsResult> build() async {
    ref.listen<AsyncValue<bool>>(connectivityStreamProvider, (previous, next) {
      final isConnected = next.value;
      if (isConnected == null) return;
      if (_wasConnected == false && isConnected == true) {
        refresh();
      }
      _wasConnected = isConnected;
    });

    final usecase = ref.watch(getAllRunsUseCaseProvider);
    return usecase.execute();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(getAllRunsUseCaseProvider);
      return usecase.execute();
    });
  }
}

final latestRunsProvider =
    AsyncNotifierProvider<LatestRunsNotifier, RunsResult>(
  LatestRunsNotifier.new,
);