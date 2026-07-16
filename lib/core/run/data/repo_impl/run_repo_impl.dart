import 'package:test_agent_mobile/core/network/api_error_model.dart';
import 'package:test_agent_mobile/core/network/api_exception.dart';
import 'package:test_agent_mobile/core/network/local_status_codes.dart';
import 'package:test_agent_mobile/core/run/data/data_sources/run_local_data_source.dart';
import 'package:test_agent_mobile/core/run/data/data_sources/run_remote_data_source.dart';
import 'package:test_agent_mobile/core/run/domain/entity/runs_result.dart';
import 'package:test_agent_mobile/core/run/domain/repo/run_repo.dart';
import 'package:test_agent_mobile/core/services/connectivity_service.dart';

class RunRepoImpl extends RunRepo {
  final ConnectivityService connectivity;
  final RunLocalDataSource local;
  final RunRemoteDataSource remote;

  RunRepoImpl({
    required this.connectivity,
    required this.local,
    required this.remote,
  });

  @override
  Future<RunsResult> getAllRuns() async {
    final hasConnection = await connectivity.isConnected;
    if (!hasConnection) {
      return _fromCacheOrThrow(() => local.getAll());
    }

    final result = await remote.getAllRuns();
    return result.when(
      onSuccess: (data) async {
        await local.cacheRuns(data);
        return RunsResult(runs: data, source: RunsSource.network);
      },
      onError: (error) async {
        final cached = await local.getAll();
        if (cached.isNotEmpty) {
          return RunsResult(runs: cached, source: RunsSource.cache);
        }
        throw ApiException(error);
      },
    );
  }

  @override
  Future<RunsResult> getRunsByProjectId(String projectId) async {
    final hasConnection = await connectivity.isConnected;
    if (!hasConnection) {
      return _fromCacheOrThrow(() => local.getByProject(projectId));
    }

    final result = await remote.getALlRunByProjectId(projectId);
    return result.when(
      onSuccess: (data) async {
        await local.cacheRuns(data);
        return RunsResult(runs: data, source: RunsSource.network);
      },
      onError: (error) async {
        final cached = await local.getByProject(projectId);
        if (cached.isNotEmpty) {
          return RunsResult(runs: cached, source: RunsSource.cache);
        }
        throw ApiException(error);
      },
    );
  }

  Future<RunsResult> _fromCacheOrThrow(
    Future<List<dynamic>> Function() getCached,
  ) async {
    final cached = await getCached();
    if (cached.isNotEmpty) {
      return RunsResult(runs: cached.cast(), source: RunsSource.cache);
    }
    throw const ApiException(
      ApiErrorModel(
        type: ApiErrorType.connectionError,
        message: 'No internet connection.',
        statusCode: LocalStatusCodes.connectionError,
      ),
    );
  }
}
