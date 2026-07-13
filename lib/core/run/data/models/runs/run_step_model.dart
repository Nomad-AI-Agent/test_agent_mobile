import 'package:freezed_annotation/freezed_annotation.dart';

part 'run_step_model.freezed.dart';
part 'run_step_model.g.dart';

@freezed
 abstract class RunStepModel with _$RunStepModel {
  const factory RunStepModel({
    required int index,
    required String action,
    required String description,
    required String target,
    String? value,
    required String status,
    String? error,
    @JsonKey(name: 'duration_ms') required int durationMs,
    String? screenshot,
    @JsonKey(name: 'target_index') int? targetIndex,
  }) = _RunStepModel;

  factory RunStepModel.fromJson(Map<String, dynamic> json) =>
      _$RunStepModelFromJson(json);
}