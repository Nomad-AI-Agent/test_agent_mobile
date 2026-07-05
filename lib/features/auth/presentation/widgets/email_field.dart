import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/styles/app_text_sizes.dart';
import 'package:test_agent_mobile/core/widgets/app_text_form_field.dart';
import 'package:test_agent_mobile/features/auth/data/helpers/form_validation.dart';

class LoginEmailField extends StatelessWidget {
  const LoginEmailField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email address",
          style: TextStyle(
            fontSize: AppTextSizes.sm.sp,
            fontWeight: FontWeight.w600,
            color: AppColorsLight.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        AppTextFormField(
          controller: controller,
          validator: validateEmail,
          hintText: "name@company.com",
          borderRadius: 12.r,
          enabledBorderColor: AppColorsLight.outlineVariant,
          focusedBorderColor: AppColorsLight.onSurface,
          backgroundColor: AppColorsLight.surfaceContainerLow,
          keyboardType: TextInputType.emailAddress,
          textStyle: TextStyle(
            fontSize: AppTextSizes.base.sp,
            color: AppColorsLight.textPrimary,
          ),
        ),
      ],
    );
  }
}
