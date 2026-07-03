
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/core/network/api_service.dart';
import 'package:test_agent_mobile/features/auth/data/datasource/auth_data_source.dart';
import 'package:test_agent_mobile/features/auth/data/repo_impl/auth_repo_impl.dart';


final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  dio.interceptors.add(
    LogInterceptor(requestBody: true, responseBody: true),
  );

  return dio;
});

final apiProvider = Provider<ApiService>((ref) {
  final dio = ref.watch(dioProvider);
  return ApiService(dio);
});

final authDataSourceProvider = Provider<AuthDataSourceImpl>((ref) {
  final apiService = ref.watch(apiProvider);
  return AuthDataSourceImpl(apiService: apiService);
});

final authRepoProvider = Provider<AuthRepoImpl>((ref) {
  final authDataSource = ref.watch(authDataSourceProvider);
  return AuthRepoImpl(authDataSource: authDataSource);
});

