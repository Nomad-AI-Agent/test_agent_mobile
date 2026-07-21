// lib/features/run/presentation/widgets/section_label.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class SectionLabel extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const SectionLabel({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 18.sp, color: AppColorsLight.onSurface),
            SizedBox(width: 6.w),
            Text(
              title,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: AppColorsLight.onSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: 6.h),
        Text(
          description,
          style: TextStyle(fontSize: 12.sp, color: AppColorsLight.textSecondary),
        ),
      ],
    );
  }
}