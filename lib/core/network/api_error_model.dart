import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.freezed.dart';

@freezed
abstract class ApiErrorModel with _$ApiErrorModel {
  const factory ApiErrorModel({
    required String message,
    required ApiErrorType type,
    required int statusCode,
    String? errorCode,
  }) = _ApiErrorModel;

  const ApiErrorModel._();

  bool get isNetworkError => type.isNetworkError;
}

enum ApiErrorType {
  connectionError,
  connectionTimeout,
  sendTimeout,
  receiveTimeout,
  badCertificate,
  badResponse,
  cancel,
  transformTimeout,
  parsingError,
  unknown,
  defaultError,
}

extension ApiErrorTypeExtension on ApiErrorType {
  bool get isNetworkError {
    return this == ApiErrorType.connectionError ||
        this == ApiErrorType.connectionTimeout ||
        this == ApiErrorType.sendTimeout ||
        this == ApiErrorType.receiveTimeout;
  }
}