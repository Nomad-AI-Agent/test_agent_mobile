import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Test Execution History",
          style: TextStyle(
            fontFamily: "Newsreader",
            fontSize: 26.sp,
            fontWeight: FontWeight.bold,
            color: AppColorsLight.onSurface,
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          "Review and analyze the outcomes of previous automated story evaluations.",
          style: TextStyle(fontSize: 14.sp, color: AppColorsLight.textSecondary),
        ),
      ],
    );
  }
}