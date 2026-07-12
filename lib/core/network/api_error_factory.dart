
import 'package:test_agent_mobile/core/network/api_error_model.dart';
import 'package:test_agent_mobile/core/network/local_status_codes.dart';

class ApiErrorFactory {
  ApiErrorFactory._();

  static ApiErrorModel get defaultError => const ApiErrorModel(
        message: "Something went wrong",
        type: ApiErrorType.defaultError,
        statusCode: LocalStatusCodes.defaultError,
      );

  static ApiErrorModel get parsingError => const ApiErrorModel(
        message: "Unexpected response format from server.",
        type: ApiErrorType.parsingError,
        statusCode: LocalStatusCodes.unknown,
      );
}