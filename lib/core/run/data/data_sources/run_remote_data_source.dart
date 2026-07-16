import 'package:test_agent_mobile/core/network/api_error_handler.dart';
import 'package:test_agent_mobile/core/network/api_result.dart';
import 'package:test_agent_mobile/core/network/api_service.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/latest_run_model.dart';

abstract class RunRemoteDataSource {
  Future<ApiResult<List<LatestRunModel>>> getAllRuns();
  Future<ApiResult<List<LatestRunModel>>> getALlRunByProjectId(
    String projectId,
  );
}

class RunRemoteDataSourceImpl extends RunRemoteDataSource {
  final ApiService apiService;

  RunRemoteDataSourceImpl({required this.apiService});

  @override
  Future<ApiResult<List<LatestRunModel>>> getAllRuns() async {
    try {
      final response = await apiService.getRuns();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<List<LatestRunModel>>> getALlRunByProjectId(
    String projectId,
  ) async {
    try {
      final response = await apiService.getRuns(projectId: projectId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.handle(e));
    }
  }
}
