import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/register/register_request_model.dart';

abstract class AuthRepo {
  Future<LoginResponseModel> login(LoginRequestModel body);
  Future<void> register(RegisterRequestModel body);
}