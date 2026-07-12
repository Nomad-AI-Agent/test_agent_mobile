import 'api_error_model.dart';


sealed class ApiResult<T> {
  const ApiResult();

  const factory ApiResult.success(T data) = ApiSuccess<T>;
  const factory ApiResult.error(ApiErrorModel error) = ApiFailure<T>;

  bool get isSuccess => this is ApiSuccess<T>;
  bool get isError => this is ApiFailure<T>;
  R when<R>({
    required R Function(T data) onSuccess,
    required R Function(ApiErrorModel error) onError,
  }) {
    return switch (this) {
      ApiSuccess<T>(:final data) => onSuccess(data),
      ApiFailure<T>(:final error) => onError(error),
    };
  }

  ApiResult<R> mapData<R>(R Function(T data) mapper) {
    return switch (this) {
      ApiSuccess<T>(:final data) => ApiResult.success(mapper(data)),
      ApiFailure<T>(:final error) => ApiResult.error(error),
    };
  }
}

final class ApiSuccess<T> extends ApiResult<T> {
  final T data;
  const ApiSuccess(this.data);
}

final class ApiFailure<T> extends ApiResult<T> {
  final ApiErrorModel error;
  const ApiFailure(this.error);
}