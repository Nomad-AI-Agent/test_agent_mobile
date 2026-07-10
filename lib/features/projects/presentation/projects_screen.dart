import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/create_project_fab.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/project_screen_header.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/projects_list_view.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      floatingActionButton: const CreateProjectFab(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProjectsScreenHeader(),
              SizedBox(height: 20.h),
              const Expanded(child: ProjectsListView()),
            ],
          ),
        ),
      ),
    );
  }
}
