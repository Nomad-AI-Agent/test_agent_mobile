import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/projects/data/helper/app_inout_decoration.dart';

class LabeledFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final String? helperText;
  final int maxLines;
  final String? Function(String?)? validator;

  const LabeledFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.helperText,
    this.maxLines = 1,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade700,
          ),
        ),
        SizedBox(height: 6.h),
        TextFormField(
          cursorColor: AppColorsDark.surface,
          controller: controller,
          maxLines: maxLines,
          style: TextStyle(fontSize: 14.sp),
          decoration: buildFormFieldDecoration(hint),
          validator: validator,
        ),
        if (helperText != null) ...[
          SizedBox(height: 6.h),
          Text(
            helperText!,
            style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade400),
          ),
        ],
      ],
    );
  }
}