import 'package:test_agent_mobile/core/network/api_error_handler.dart';
import 'package:test_agent_mobile/core/network/api_result.dart';
import 'package:test_agent_mobile/core/network/api_service.dart';
import 'package:test_agent_mobile/features/dashboard/data/models/dashboard_status_model.dart';

abstract class DashboardRemoteDataSource {
  Future<ApiResult<DashboardStatusModel>> getDashboardStatus();

}

class DashboardRemoteDataSourceImpl extends DashboardRemoteDataSource {
  final ApiService apiService;

  DashboardRemoteDataSourceImpl({required this.apiService});

  @override
  Future<ApiResult<DashboardStatusModel>> getDashboardStatus() async {
    try {
      final response = await apiService.getDashboardStatus();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.handle(e));
    }
  }


}
