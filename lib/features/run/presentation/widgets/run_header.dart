import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class RunHeader extends StatelessWidget {
  const RunHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Design New Narrative",
          style: TextStyle(
            fontFamily: "Newsreader",
            fontSize: 26.sp,
            fontWeight: FontWeight.bold,
            color: AppColorsLight.onSurface,
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          "Establish the parameters and starting point for your automated testing.",
          style: TextStyle(fontSize: 14.sp, color: AppColorsLight.textSecondary),
        ),
      ],
    );
  }
}