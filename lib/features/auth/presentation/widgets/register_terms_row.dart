// register_terms_row.dart
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class RegisterTermsRow extends StatelessWidget {
  const RegisterTermsRow({super.key, this.onTermsTap, this.onPrivacyTap});

  final VoidCallback? onTermsTap;
  final VoidCallback? onPrivacyTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColorsLight.textSecondary,
          ),
          children: [
            const TextSpan(text: "By signing up, you agree to our "),
            TextSpan(
              text: "Terms",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                color: AppColorsLight.textPrimary,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTermsTap,
            ),
            const TextSpan(text: " and "),
            TextSpan(
              text: "Privacy Policy",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                color: AppColorsLight.textPrimary,
              ),
              recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
            ),
            const TextSpan(text: "."),
          ],
        ),
      ),
    );
  }
}
