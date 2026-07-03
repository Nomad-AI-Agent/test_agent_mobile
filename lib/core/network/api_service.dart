
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_agent_mobile/core/network/api_const.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';

part "api_service.g.dart";
@RestApi(baseUrl:ApiConst.baseUrl )
abstract class ApiService {
  @POST(ApiConst.login)
  Future<LoginResponseModel> login(@Body() LoginRequestModel body);
  
}
