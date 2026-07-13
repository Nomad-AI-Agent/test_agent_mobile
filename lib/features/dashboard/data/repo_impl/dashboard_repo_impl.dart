import 'package:test_agent_mobile/core/network/api_error_model.dart';
import 'package:test_agent_mobile/core/network/api_exception.dart';
import 'package:test_agent_mobile/core/network/local_status_codes.dart';
import 'package:test_agent_mobile/core/services/connectivity_service.dart';
import 'package:test_agent_mobile/features/dashboard/data/data_source/dashboard_local_data_source.dart';
import 'package:test_agent_mobile/features/dashboard/data/data_source/dashboard_remote_data_source.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/dashboard_result.dart';
import 'package:test_agent_mobile/features/dashboard/domain/repo/dashboard_repo.dart';

class DashboardRepoImpl extends DashboardRepo {
  final ConnectivityService connectivity;
  final DashboardLocalDataSource dashboardLocalDataSource;
  final DashboardRemoteDataSource dashboardRemoteDataSource;

  DashboardRepoImpl({
    required this.connectivity,
    required this.dashboardLocalDataSource,
    required this.dashboardRemoteDataSource,
  });

  @override
  Future<DashboardResult> getDashboardStatus() async {
    final hasConnection = await connectivity.isConnected;

    if (!hasConnection) {
      return _fromCacheOrThrow();
    }

    final result = await dashboardRemoteDataSource.getDashboardStatus();
    return result.when(
      onSuccess: (data) async {
        await dashboardLocalDataSource.cacheStatus(data);
        return DashboardResult(status: data, source: DashboardSource.network);
      },
      onError: (error) async {
        final cached = await dashboardLocalDataSource.getCached();
        if (cached != null) {
          return DashboardResult(status: cached, source: DashboardSource.cache);
        }
        throw ApiException(error);
      },
    );
  }

  Future<DashboardResult> _fromCacheOrThrow() async {
    final cached = await dashboardLocalDataSource.getCached();
    if (cached != null) {
      return DashboardResult(status: cached, source: DashboardSource.cache);
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
