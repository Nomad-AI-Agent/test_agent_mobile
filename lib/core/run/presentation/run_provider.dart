import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/core/network/connectivity_provider.dart';
import 'package:test_agent_mobile/core/run/data/data_sources/run_local_data_source.dart';
import 'package:test_agent_mobile/core/run/data/data_sources/run_remote_data_source.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/auth_provider.dart';
import 'package:test_agent_mobile/core/run/data/repo_impl/run_repo_impl.dart';
import 'package:test_agent_mobile/core/run/domain/repo/run_repo.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';

final runRemoteDataSourceProvider = Provider<RunRemoteDataSource>((ref) {
  final apiService = ref.watch(apiProvider);
  return RunRemoteDataSourceImpl(apiService: apiService);
});

final runLocalDataSourceProvider = Provider<RunLocalDataSource>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return RunLocalDataSourceImpl(dao: db.runsDao);
});

final runRepoProvider = Provider<RunRepo>((ref) {
  return RunRepoImpl(
    connectivity: ref.watch(connectivityServiceProvider),
    local: ref.watch(runLocalDataSourceProvider),
    remote: ref.watch(runRemoteDataSourceProvider),
  );
});