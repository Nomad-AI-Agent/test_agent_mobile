// lib/features/run/presentation/providers/run_form_notifier.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/run/data/models/run_form_state.dart';
import 'package:test_agent_mobile/features/run/data/models/target_row.dart';

class RunFormNotifier extends Notifier<RunFormState> {
  final TextEditingController urlController = TextEditingController();
  final TextEditingController userStoryController = TextEditingController();

  @override
  RunFormState build() {
    userStoryController.addListener(_onUserStoryChanged);

    ref.onDispose(() {
      urlController.dispose();
      userStoryController.removeListener(_onUserStoryChanged);
      userStoryController.dispose();
      for (final t in state.targets) {
        t.dispose();
      }
    });

    return RunFormState(targets: [TargetRow(id: UniqueKey().toString())]);
  }

  void _onUserStoryChanged() {
    state = state.copyWith(userStory: userStoryController.text);
  }

  void setProject(String? id) {
    state = state.copyWith(selectedProjectId: () => id);
  }

  void setMultiRole(bool value) {
    state = state.copyWith(multiRoleEnabled: value);
  }

  void setUrlFromRecent(String url) {
    urlController.text = url;
  }

  void addTarget() {
    final next = [...state.targets, TargetRow(id: UniqueKey().toString())];
    state = state.copyWith(targets: next);
  }

  void removeTarget(String id) {
    if (state.targets.length <= 1) return;

    final removed = state.targets.firstWhere((t) => t.id == id);
    final next = state.targets.where((t) => t.id != id).toList();

    state = state.copyWith(targets: next);
    removed.dispose();
  }

  Future<void> submit() async {
    if (!state.canSubmit) return;

    state = state.copyWith(isSubmitting: true);
    try {
      // await ref.read(runRepositoryProvider).startRun(...)
      await Future<void>.delayed(const Duration(seconds: 1));
    } finally {
      state = state.copyWith(isSubmitting: false);
    }
  }
}

final runFormProvider =
    NotifierProvider<RunFormNotifier, RunFormState>(RunFormNotifier.new);