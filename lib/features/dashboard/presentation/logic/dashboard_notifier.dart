import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/core/network/connectivity_provider.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/dashboard_result.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/dashboard_provider.dart';

class DashboardNotifier extends AsyncNotifier<DashboardResult> {
  bool? _wasConnected;

  @override
  Future<DashboardResult> build() async {
    ref.listen<AsyncValue<bool>>(connectivityStreamProvider, (previous, next) {
      final isConnected = next.value;
      if (isConnected == null) return;
      if (_wasConnected == false && isConnected == true) {
        refresh();
      }
      _wasConnected = isConnected;
    });

    final usecase = ref.watch(getDashboardStatusUseCaseProvider);
    return usecase.execute();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(getDashboardStatusUseCaseProvider);
      return usecase.execute();
    });
  }
}

final dashboardProvider =
    AsyncNotifierProvider<DashboardNotifier, DashboardResult>(
  DashboardNotifier.new,
);