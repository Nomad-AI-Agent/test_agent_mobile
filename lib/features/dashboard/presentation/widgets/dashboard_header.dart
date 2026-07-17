// lib/features/dashboard/presentation/widgets/dashboard_header.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/widgets/connectivity_aware_header.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConnectivityAwareHeader(
          titleContent: Text(
            "Good Evening,\nTester.",
            style: TextStyle(
              fontFamily: "Newsreader",
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              color: AppColorsLight.onSurface,
            ),
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          "Here is the current state of your test environments.",
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColorsLight.textSecondary,
          ),
        ),
      ],
    );
  }
}
