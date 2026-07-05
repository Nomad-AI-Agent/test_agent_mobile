import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/create_project_sheet.dart';

class CreateProjectContainer extends StatelessWidget {
  const CreateProjectContainer({super.key});

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
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: Colors.grey.shade300,
        strokeWidth: 1,
        dashPattern: const [6, 4],
        radius: Radius.circular(12.r),
      ),
      child: Container(
        width: double.infinity,
        height: 150.h,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () => _showCreateProjectSheet(context),
              child: CircleAvatar(
                radius: 24.r,
                backgroundColor: AppColorsLight.surfaceContainerLow,
                child: const Icon(Icons.add, color: AppColorsDark.surface),
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              "Create Project",
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: "newsreader",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
