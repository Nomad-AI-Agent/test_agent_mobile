import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/styles/app_text_sizes.dart';
import 'package:test_agent_mobile/core/widgets/app_text_form_field.dart';
import 'package:test_agent_mobile/features/auth/data/helpers/form_validation.dart';

class LoginPasswordField extends StatefulWidget {
  const LoginPasswordField({
    super.key,
    required this.controller,
    this.onForgotPasswordTap,
  });

  final TextEditingController controller;
  final VoidCallback? onForgotPasswordTap;

  @override
  State<LoginPasswordField> createState() => _LoginPasswordFieldState();
}

class _LoginPasswordFieldState extends State<LoginPasswordField> {
  bool obscurePassword = true;

  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Password",
              style: TextStyle(
                fontSize: AppTextSizes.sm.sp,
                fontWeight: FontWeight.w600,
                color: AppColorsLight.textPrimary,
              ),
            ),
            GestureDetector(
              onTap: widget.onForgotPasswordTap,
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  fontSize: AppTextSizes.sm.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColorsLight.primary,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        AppTextFormField(
          controller: widget.controller,
          validator: validatePassword,
          obscureText: obscurePassword,
          hintText: "••••••••",
          borderRadius: 12.r,
          enabledBorderColor: AppColorsLight.outlineVariant,
          focusedBorderColor: AppColorsLight.onSurface,
          backgroundColor: AppColorsLight.surfaceContainerLow,
          textStyle: TextStyle(
            fontSize: AppTextSizes.base.sp,
            color: AppColorsLight.textPrimary,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              obscurePassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: AppColorsLight.textMuted,
            ),
            onPressed: () {
              setState(() {
                obscurePassword = !obscurePassword;
              });
            },
          ),
        ),
      ],
    );
  }
}