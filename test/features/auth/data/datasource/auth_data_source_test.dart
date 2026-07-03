import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_agent_mobile/core/network/api_service.dart';
import 'package:test_agent_mobile/features/auth/data/datasource/auth_data_source.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';

import 'auth_data_source_test.mocks.dart';

@GenerateMocks([ApiService])
void main() {
  late MockApiService mockApiService;
  late AuthDataSource authDataSource;
  setUp(() {
    mockApiService = MockApiService();
    authDataSource = AuthDataSourceImpl(apiService: mockApiService);
  });

  test('should return LoginResponseModel when api call succeeds', () async {
  const request = LoginRequestModel(
    login: "admin@gmail.com",
    password: "password",
  );

  const response = LoginResponseModel(
    accessToken: "adfasfasdf",
    tokenType: "bear",
  );

  when(
    mockApiService.login(request),
  ).thenAnswer(
    (_) async => response,
  );

  // Act
  final result = await authDataSource.login(request);

  // Assert
  expect(result, response);
});

}
