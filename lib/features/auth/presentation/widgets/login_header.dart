import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            "Welcome Back!",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "Newsreader",
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          "Log in to continue testing with Nomad.",
          style: TextStyle(fontSize: 16.sp, color: AppColorsDark.primaryFixed),
        ),
      ],
    );
  }
}
