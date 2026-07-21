// lib/features/run/presentation/widgets/target_url_input.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class TargetUrlInput extends StatelessWidget {
  final TextEditingController controller;

  const TargetUrlInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(fontSize: 14.sp, color: AppColorsLight.onSurface),
      decoration: InputDecoration(
        hintText: "https://example.com",
        hintStyle: TextStyle(fontSize: 14.sp, color: AppColorsLight.textMuted),
        filled: true,
        fillColor: AppColorsLight.surface,
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: AppColorsLight.outlineVariant),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide:const  BorderSide(color: AppColorsLight.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide:const  BorderSide(color: AppColorsLight.onSurface, width: 1.2),
        ),
      ),
    );
  }
}