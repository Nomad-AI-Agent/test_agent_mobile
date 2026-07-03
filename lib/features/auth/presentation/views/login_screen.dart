import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/styles/app_text_sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      appBar: AppBar(
        backgroundColor: AppColorsLight.surface,
        title: Text(
          "Login",
          style: TextStyle(
            color: AppColorsDark.surface,
            fontFamily: "Newsreader",
            fontSize: AppTextSizes.xxl.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon:const Icon(Icons.arrow_back_ios_new),
        ),
      ),
    );
  }
}
