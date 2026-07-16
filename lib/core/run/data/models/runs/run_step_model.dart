import 'package:freezed_annotation/freezed_annotation.dart';

part 'run_step_model.freezed.dart';
part 'run_step_model.g.dart';

class DynamicToStringConverter implements JsonConverter<String?, dynamic> {
  const DynamicToStringConverter();

  @override
  String? fromJson(dynamic json) => json?.toString();

  @override
  dynamic toJson(String? object) => object;
}

@freezed
abstract class RunStepModel with _$RunStepModel {
  const factory RunStepModel({
    @JsonKey(name: 'step_index') int? stepIndex,
    int? index,
    String? action,
    String? description,
    String? status,
    @JsonKey(name: 'duration_ms') int? durationMs,
    String? error,
    String? target,
    @DynamicToStringConverter() String? value,
    String? screenshot,
    @JsonKey(name: 'target_index') int? targetIndex,
  }) = _RunStepModel;

  factory RunStepModel.fromJson(Map<String, dynamic> json) =>
      _$RunStepModelFromJson(json);
}