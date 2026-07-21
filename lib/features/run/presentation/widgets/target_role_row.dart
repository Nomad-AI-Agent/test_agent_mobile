import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/run/data/models/target_row.dart';

class TargetRoleRow extends StatelessWidget {
  final TargetRow target;
  final VoidCallback? onRemove;

  const TargetRoleRow({
    super.key,
    required this.target,
    this.onRemove,
  });

  InputDecoration _decoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(fontSize: 13.sp, color: AppColorsLight.textMuted),
      filled: true,
      fillColor: AppColorsLight.surface,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(color: AppColorsLight.outlineVariant),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(color: AppColorsLight.outlineVariant),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(color: AppColorsLight.onSurface, width: 1.2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: TextField(
            controller: target.urlController,
            style: TextStyle(fontSize: 13.sp, color: AppColorsLight.onSurface),
            decoration: _decoration("https://example.com"),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          flex: 1,
          child: TextField(
            controller: target.roleController,
            style: TextStyle(fontSize: 13.sp, color: AppColorsLight.onSurface),
            decoration: _decoration("role (e.g. customer)"),
          ),
        ),
        if (onRemove != null) ...[
          SizedBox(width: 6.w),
          GestureDetector(
            onTap: onRemove,
            child: Icon(Icons.close, size: 18.sp, color: AppColorsLight.textMuted),
          ),
        ],
      ],
    );
  }
}