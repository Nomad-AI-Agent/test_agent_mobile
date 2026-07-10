import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
abstract class ProjectModel with _$ProjectModel {
  const factory ProjectModel({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'run_count') @Default(0) int runsCount,
    @JsonKey(name: 'created_at_iso') required DateTime lastRunDate,
    @JsonKey(name: 'user_id') String? userid,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}