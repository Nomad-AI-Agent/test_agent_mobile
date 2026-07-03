// register_login_row.dart
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class RegisterLoginRow extends StatelessWidget {
  const RegisterLoginRow({super.key, this.onLoginTap});

  final VoidCallback? onLoginTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 14.sp, color: AppColorsLight.textSecondary),
          children: [
            const TextSpan(text: "Already have an account? "),
            TextSpan(
              text: "Log in",
              style:const TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColorsLight.textPrimary,
              ),
              recognizer: TapGestureRecognizer()..onTap = onLoginTap,
            ),
          ],
        ),
      ),
    );
  }
}