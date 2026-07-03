import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_agent_mobile/core/network/api_service.dart';
import 'package:test_agent_mobile/features/auth/data/datasource/auth_data_source.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/register/register_request_model.dart';

import 'auth_data_source_test.mocks.dart';

@GenerateMocks([ApiService])
void main() {
  late MockApiService mockApiService;
  late AuthDataSource authDataSource;

  setUp(() {
    mockApiService = MockApiService();
    authDataSource = AuthDataSourceImpl(apiService: mockApiService);
  });

  group('Login', () {
    const request = LoginRequestModel(
      login: 'admin@gmail.com',
      password: 'password',
    );

    const response = LoginResponseModel(
      accessToken: 'adfasfasdf',
      tokenType: 'bear',
    );

    test('should return LoginResponseModel when api call succeeds', () async {
      // Arrange
      when(
        mockApiService.login(request.toJson()),
      ).thenAnswer((_) async => response);

      // Act
      final result = await authDataSource.login(request);

      // Assert
      expect(result, response);

      verify(mockApiService.login(request.toJson())).called(1);

      verifyNoMoreInteractions(mockApiService);
    });

    test('should throw exception when api call fails', () async {
      // Arrange
      when(
        mockApiService.login(request.toJson()),
      ).thenThrow(Exception('Login Failed'));

      // Act & Assert
      expect(() => authDataSource.login(request), throwsException);

      verify(mockApiService.login(request.toJson())).called(1);
    });
  });
  group('register', () {
  test(
    'should complete successfully when register api call succeeds',
    () async {
      // Arrange
      const request = RegisterRequestModel(
        email: 'admin@gmail.com',
        username: 'admin',
        fullname: 'admin',
        password: 'password',
      );

      when(
        mockApiService.register(request.toJson()),
      ).thenAnswer((_) async {});

      // Act
      await authDataSource.register(request);

      // Assert
      verify(
        mockApiService.register(request.toJson()),
      ).called(1);

      verifyNoMoreInteractions(mockApiService);
    },
  );

  test(
    'should throw exception when register api call fails',
    () async {
      // Arrange
      const request = RegisterRequestModel(
        email: 'admin@gmail.com',
        username: 'admin',
        fullname: 'admin',
        password: 'password',
      );

      when(
        mockApiService.register(request.toJson()),
      ).thenThrow(
        Exception('Register Failed'),
      );

      // Act & Assert
      expect(
        () => authDataSource.register(request),
        throwsException,
      );
    },
  );
});
}
