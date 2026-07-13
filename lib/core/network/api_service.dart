import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_agent_mobile/core/run/data/models/runs/latest_run_model.dart';
import 'package:test_agent_mobile/core/network/api_const.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';
import 'package:test_agent_mobile/features/dashboard/data/models/dashboard_status_model.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

part "api_service.g.dart";

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConst.login)
  Future<LoginResponseModel> login(@Body() Map<String, dynamic> body);
  @POST(ApiConst.register)
  Future<void> register(@Body() Map<String, dynamic> body);

  @GET(ApiConst.projects)
  Future<List<ProjectModel>> getProjects();
  @POST(ApiConst.projects)
  Future<void> createProject(@Body() Map<String, dynamic> body);
  @GET(ApiConst.dashboardStatus)
  Future<DashboardStatusModel> getDashboardStatus();
  @GET(ApiConst.runs)
  Future<List<LatestRunModel>> getRuns({
    @Query('project_id') String? projectId,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });
}
