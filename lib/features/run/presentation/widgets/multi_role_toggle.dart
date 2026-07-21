import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class MultiRoleToggle extends StatelessWidget {
  final bool enabled;
  final ValueChanged<bool> onChanged;

  const MultiRoleToggle({
    super.key,
    required this.enabled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColorsLight.surface,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Icon(Icons.group_outlined, size: 18.sp, color: AppColorsLight.onSurface),
          SizedBox(width: 8.w),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Multi-Role Mode",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColorsLight.onSurface,
                    ),
                  ),
                  TextSpan(
                    text: "  Test a story across multiple roles and URLs",
                    style: TextStyle(fontSize: 12.sp, color: AppColorsLight.textSecondary),
                  ),
                ],
              ),
            ),
          ),
          Switch(
            value: enabled,
            onChanged: onChanged,
            activeThumbColor: AppColorsLight.surface,
            activeTrackColor: AppColorsLight.primary,
          ),
        ],
      ),
    );
  }
}