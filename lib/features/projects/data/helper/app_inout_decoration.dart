import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

InputDecoration buildFormFieldDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey.shade400),
    filled: true,
    fillColor: Colors.grey.shade50,
    contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(color: AppColorsDark.surface, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(color: Colors.red, width: 1.2),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(color: Colors.red, width: 1.2),
    ),
  );
}