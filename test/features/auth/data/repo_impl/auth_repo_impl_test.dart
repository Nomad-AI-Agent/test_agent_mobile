import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_agent_mobile/features/auth/data/datasource/auth_data_source.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';
import 'package:test_agent_mobile/features/auth/data/repo_impl/auth_repo_impl.dart';
import 'package:test_agent_mobile/features/auth/domain/repo/auth_repo.dart';

import 'auth_repo_impl_test.mocks.dart';

@GenerateMocks([AuthDataSource])
void main() {
  late MockAuthDataSource mockAuthDataSource;
  late AuthRepo authRepo;
  setUp(() {
    mockAuthDataSource = MockAuthDataSource();
    authRepo = AuthRepoImpl(authDataSource: mockAuthDataSource);
  });

  test('test in repo must be success', () async {
    // Arrange
    const loginRequest = LoginRequestModel(
      login: "testuser",
      password: "testpassword"
    );

    const loginResponse = LoginResponseModel(
      accessToken: "testaccesstoken",
      tokenType: "bearer"
    );

    when(mockAuthDataSource.login(loginRequest))
        .thenAnswer((_) async => loginResponse);

    // Act
    final result = await authRepo.login(loginRequest);
    expect(result, loginResponse);
  });
}