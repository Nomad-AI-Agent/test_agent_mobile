import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/projects/domain/entities/project_data.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/create_project_container.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Projects",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Newsreader",
                  fontSize: 24.sp,
                ),
              ),
              Text(
                "Group of test runs into projects for better organization.",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.h),
              CreateProjectContainer(),
              SizedBox(height: 20.h),
              ProjectCard(
                project: ProjectData(
                  name: "last",
                  description: "description",
                  runsCount: 12,
                  lastRunDate: DateTime.now(),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
