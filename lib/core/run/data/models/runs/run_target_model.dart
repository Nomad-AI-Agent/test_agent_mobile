import 'package:freezed_annotation/freezed_annotation.dart';

part 'run_target_model.freezed.dart';
part 'run_target_model.g.dart';

@freezed
 abstract class RunTargetModel with _$RunTargetModel {
  const factory RunTargetModel({
    required String url,
    required String role,
  }) = _RunTargetModel;

  factory RunTargetModel.fromJson(Map<String, dynamic> json) =>
      _$RunTargetModelFromJson(json);
}