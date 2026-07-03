import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/styles/app_text_sizes.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorsLight.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.r),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? SizedBox(
                width: 22.w,
                height: 22.w,
                child:const  CircularProgressIndicator(
                  strokeWidth: 2.5,
                  color: AppColorsLight.surface,
                ),
              )
            : Text(
                "Log In",
                style: TextStyle(
                  color: AppColorsLight.surface,
                  fontSize: AppTextSizes.base.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}