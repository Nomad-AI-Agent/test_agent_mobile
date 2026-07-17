import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/core/local_storage/shared_prefs_provider.dart';
import 'package:test_agent_mobile/core/network/connectivity_provider.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/auth_provider.dart';
import 'package:test_agent_mobile/features/dashboard/data/data_source/dashboard_local_data_source.dart';
import 'package:test_agent_mobile/features/dashboard/data/data_source/dashboard_remote_data_source.dart';
import 'package:test_agent_mobile/features/dashboard/data/repo_impl/dashboard_repo_impl.dart';
import 'package:test_agent_mobile/features/dashboard/domain/use_case/get_dashboard_status_use_case.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/dashboard_notifier.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/latest_run_notifier.dart';

final dashboardRemoteDataSourceProvider =
    Provider<DashboardRemoteDataSourceImpl>((ref) {
      final apiService = ref.watch(apiProvider);
      return DashboardRemoteDataSourceImpl(apiService: apiService);
    });

final dashboardLocalDataSourceProvider = Provider<DashboardLocalDataSource>((
  ref,
) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return DashboardLocalDataSourceImpl(prefs: prefs);
});

final dashboardRepoProvider = Provider<DashboardRepoImpl>((ref) {
  return DashboardRepoImpl(
    connectivity: ref.watch(connectivityServiceProvider),
    dashboardLocalDataSource: ref.watch(dashboardLocalDataSourceProvider),
    dashboardRemoteDataSource: ref.watch(dashboardRemoteDataSourceProvider),
  );
});

final getDashboardStatusUseCaseProvider = Provider<GetDashboardStatusUseCase>((
  ref,
) {
  final repo = ref.watch(dashboardRepoProvider);
  return GetDashboardStatusUseCase(dashboardRepo: repo);
});

final isDashboardLoadingProvider = Provider<bool>((ref) {
  final dashboard = ref.watch(dashboardProvider);
  final runs = ref.watch(latestRunsProvider);
  return dashboard.isLoading || runs.isLoading;
});
