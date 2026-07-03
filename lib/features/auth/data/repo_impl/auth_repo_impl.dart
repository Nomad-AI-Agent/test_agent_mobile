// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:test_agent_mobile/features/auth/data/datasource/auth_data_source.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';
import 'package:test_agent_mobile/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  AuthDataSource authDataSource;
  AuthRepoImpl({
    required this.authDataSource,
  });

  @override
  Future<LoginResponseModel> login(LoginRequestModel body) {
    return authDataSource.login(body);
  }
}
