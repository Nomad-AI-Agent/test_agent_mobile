import 'package:flutter/material.dart';
import 'package:test_agent_mobile/core/network/api_error_model.dart';

extension ApiErrorTypeUI on ApiErrorType {
  IconData get icon {
    switch (this) {
      case ApiErrorType.connectionError:
        return Icons.wifi_off;
      case ApiErrorType.connectionTimeout:
        return Icons.timer_off;
      case ApiErrorType.sendTimeout:
        return Icons.send;
      case ApiErrorType.receiveTimeout:
        return Icons.downloading;
      case ApiErrorType.badCertificate:
        return Icons.security;
      case ApiErrorType.badResponse:
        return Icons.warning_amber_rounded;
      case ApiErrorType.cancel:
        return Icons.cancel_outlined;
      case ApiErrorType.transformTimeout:
        return Icons.sync_problem;
      case ApiErrorType.parsingError:
        return Icons.data_object;
      case ApiErrorType.unknown:
        return Icons.error_outline;
      case ApiErrorType.defaultError:
        return Icons.error;
    }
  }
}