import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/project_details/presentation/widgets/project_description_header.dart';
import 'package:test_agent_mobile/features/project_details/presentation/widgets/project_details_dashboard.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorsLight.surface,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Project Details",
          style: TextStyle(
            fontFamily: "newsreader",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: AppColorsLight.surface,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            const ProjectDescriptionHeader(
              description: "This project consist of runs",
            ),
            SizedBox(height: 12.h),
            const ProjectDetailsDashboard(),
          ],
        ),
      ),
    );
  }
}
