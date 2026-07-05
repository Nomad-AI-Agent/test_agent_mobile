import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/projects/domain/entities/project_data.dart';

class ProjectCard extends StatelessWidget {
  final ProjectData project;
  final VoidCallback? onTap;

  const ProjectCard({super.key, required this.project, this.onTap});

  String _formatDate(DateTime date) {
    return "${date.month}/${date.day}/${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColorsDark.onSurface.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.grey.shade300, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.folder, size: 18.sp, color: Colors.black),
                SizedBox(width: 8.w),
                Text(
                  project.name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: "newsreader",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              project.description,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
            SizedBox(height: 14.h),
            Row(
              children: [
                Icon(
                  Icons.play_circle_outline,
                  size: 16.sp,
                  color: Colors.grey.shade600,
                ),
                SizedBox(width: 4.w),
                Text(
                  "${project.runsCount} run${project.runsCount == 1 ? '' : 's'}",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(width: 16.w),
                Icon(
                  Icons.access_time,
                  size: 16.sp,
                  color: Colors.grey.shade600,
                ),
                SizedBox(width: 4.w),
                Text(
                  _formatDate(project.lastRunDate),
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
