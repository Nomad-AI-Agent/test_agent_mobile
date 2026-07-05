import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

enum PasswordStrength { empty, weak, medium, strong }

PasswordStrength calculatePasswordStrength(String password) {
  if (password.isEmpty) return PasswordStrength.empty;
  if (password.length < 8) return PasswordStrength.weak;

  int score = 0;
  if (password.length >= 8) score++;
  if (RegExp(r'[A-Z]').hasMatch(password)) score++;
  if (RegExp(r'[0-9]').hasMatch(password)) score++;
  if (RegExp(r'[!@#\$&*~%^()_+\-=]').hasMatch(password)) score++;

  if (score <= 1) return PasswordStrength.weak;
  if (score <= 3) return PasswordStrength.medium;
  return PasswordStrength.strong;
}

class PasswordStrengthIndicator extends StatelessWidget {
  const PasswordStrengthIndicator({super.key, required this.strength});

  final PasswordStrength strength;

  int get _filledSegments {
    switch (strength) {
      case PasswordStrength.empty:
        return 0;
      case PasswordStrength.weak:
        return 1;
      case PasswordStrength.medium:
        return 2;
      case PasswordStrength.strong:
        return 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: List.generate(3, (index) {
            final isFilled = index < _filledSegments;
            return Expanded(
              child: Container(
                margin: EdgeInsets.only(right: index != 2 ? 4.w : 0),
                height: 4.h,
                decoration: BoxDecoration(
                  color: isFilled
                      ? AppColorsLight.primary
                      : AppColorsLight.outlineVariant,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 6.h),
        Text(
          "At least 8 characters",
          style: TextStyle(fontSize: 12.sp, color: AppColorsLight.textMuted),
        ),
      ],
    );
  }
}
