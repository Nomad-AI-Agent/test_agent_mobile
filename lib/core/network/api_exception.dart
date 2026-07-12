import 'api_error_model.dart';

class ApiException implements Exception {
  final ApiErrorModel error;
  const ApiException(this.error);

  String get message => error.message;

  @override
  String toString() => message;
}