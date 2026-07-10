import 'package:flutter/material.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/create_project_sheet.dart';

class CreateProjectFab extends StatelessWidget {
  const CreateProjectFab({super.key});

  void _showCreateProjectSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const CreateProjectSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _showCreateProjectSheet(context),
      backgroundColor: AppColorsDark.surface,
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
