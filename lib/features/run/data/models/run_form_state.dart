// lib/features/run/data/models/run_form_state.dart
import 'package:test_agent_mobile/features/run/data/models/target_row.dart';

class RunFormState {
  final String? selectedProjectId;
  final bool multiRoleEnabled;
  final List<TargetRow> targets;
  final String userStory;
  final bool isSubmitting;

  const RunFormState({
    required this.targets,
    this.selectedProjectId,
    this.multiRoleEnabled = false,
    this.userStory = '',
    this.isSubmitting = false,
  });

  bool get canSubmit => userStory.trim().isNotEmpty && !isSubmitting;

  RunFormState copyWith({
    String? Function()? selectedProjectId,
    bool? multiRoleEnabled,
    List<TargetRow>? targets,
    String? userStory,
    bool? isSubmitting,
  }) {
    return RunFormState(
      selectedProjectId:
          selectedProjectId != null ? selectedProjectId() : this.selectedProjectId,
      multiRoleEnabled: multiRoleEnabled ?? this.multiRoleEnabled,
      targets: targets ?? this.targets,
      userStory: userStory ?? this.userStory,
      isSubmitting: isSubmitting ?? this.isSubmitting,
    );
  }
}