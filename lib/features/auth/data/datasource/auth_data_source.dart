import 'package:test_agent_mobile/core/network/api_service.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/register/register_request_model.dart';

abstract class AuthDataSource {
  Future<LoginResponseModel> login(LoginRequestModel body);
  Future<void> register(RegisterRequestModel body);
}

class AuthDataSourceImpl implements AuthDataSource {
  final ApiService apiService;

  AuthDataSourceImpl({required this.apiService});

  @override
  Future<LoginResponseModel> login(LoginRequestModel body) async {
    final response = await apiService.login(body.toJson());
    return response;
  }

  @override
  Future<void> register(RegisterRequestModel body) async {
    await apiService.register(body.toJson());
  }

}