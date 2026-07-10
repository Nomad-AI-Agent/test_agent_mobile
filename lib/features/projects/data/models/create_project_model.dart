import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_project_model.freezed.dart';
part 'create_project_model.g.dart';

@freezed
abstract class CreateProjectModel with _$CreateProjectModel {
  const factory CreateProjectModel({
    required String name,
    String? description,
  }) = _CreateProjectModel;

  factory CreateProjectModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectModelFromJson(json);
}