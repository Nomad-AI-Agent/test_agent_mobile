import 'dart:convert';

import 'package:dio/dio.dart';

import 'api_error_factory.dart';
import 'api_error_model.dart';
import 'local_status_codes.dart';

class ApiErrorHandler {
  ApiErrorHandler._();

  static ApiErrorModel handle(dynamic e) {
    if (e is DioException) {
      return _handleDioException(e);
    }

    if (e is FormatException) {
      return ApiErrorFactory.parsingError;
    }

    return ApiErrorFactory.defaultError;
  }

  static ApiErrorModel _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionError:
        return const ApiErrorModel(
          message:
              "No internet connection. Please check your Wi-Fi or mobile data.",
          type: ApiErrorType.connectionError,
          statusCode: LocalStatusCodes.connectionError,
        );

      case DioExceptionType.connectionTimeout:
        return const ApiErrorModel(
          message:
              "The connection took too long. Try checking your internet or try again later.",
          type: ApiErrorType.connectionTimeout,
          statusCode: LocalStatusCodes.connectionTimeout,
        );

      case DioExceptionType.sendTimeout:
        return const ApiErrorModel(
          message: "Request timed out while sending data. Please try again.",
          type: ApiErrorType.sendTimeout,
          statusCode: LocalStatusCodes.sendTimeout,
        );

      case DioExceptionType.receiveTimeout:
        return const ApiErrorModel(
          message: "Server took too long to respond. Please try again later.",
          type: ApiErrorType.receiveTimeout,
          statusCode: LocalStatusCodes.receiveTimeout,
        );

      case DioExceptionType.badCertificate:
        return const ApiErrorModel(
          message:
              "Security issue detected with the server. Connection not secure.",
          type: ApiErrorType.badCertificate,
          statusCode: LocalStatusCodes.badCertificate,
        );

      case DioExceptionType.badResponse:
        return ApiErrorModel(
          message: _extractErrorMessage(e.response),
          type: ApiErrorType.badResponse,
          statusCode: e.response?.statusCode ?? LocalStatusCodes.badResponse,
          errorCode: _extractErrorCode(e.response),
        );

      case DioExceptionType.cancel:
        return const ApiErrorModel(
          message: "The request was cancelled. Please try again.",
          type: ApiErrorType.cancel,
          statusCode: LocalStatusCodes.cancel,
        );

      case DioExceptionType.unknown:
        return const ApiErrorModel(
          message:
              "Something went wrong. Please check your connection and try again.",
          type: ApiErrorType.unknown,
          statusCode: LocalStatusCodes.unknown,
        );

      case DioExceptionType.transformTimeout:
        return const ApiErrorModel(
          message:
              "There was a problem processing the server response. Please try again.",
          type: ApiErrorType.transformTimeout,
          statusCode: LocalStatusCodes.transformTimeout,
        );
    }
  }

  /// Extracts a human-readable error message from the response body.
  /// Defensive against malformed backends (non-Map data, non-String values).
  static String _extractErrorMessage(Response? response) {
    final data = response?.data;

    Map<String, dynamic>? map;
    if (data is Map<String, dynamic>) {
      map = data;
    } else if (data is String) {
      // Some backends return a raw JSON string instead of a decoded Map.
      try {
        final decoded = jsonDecode(data);
        if (decoded is Map<String, dynamic>) map = decoded;
      } catch (_) {
        // not JSON, ignore
      }
    }

    if (map != null) {
      final rawMsg = map['message'] ?? map['error'] ?? map['msg'];
      if (rawMsg != null) return rawMsg.toString();
    }

    return 'Server returned an unexpected response';
  }

  static String? _extractErrorCode(Response? response) {
    final data = response?.data;
    if (data is Map<String, dynamic>) {
      return data['error_code']?.toString();
    }
    return null;
  }
}