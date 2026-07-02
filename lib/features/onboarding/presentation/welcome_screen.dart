import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/utils/app_assets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    Assets.assetsImagesLogoWhite,
                    fit: BoxFit.contain,
                    height: 120.h,
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Text(
                      'AI-powered testing that\nthinks like a user',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Newsreader',
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColorsLight.onSurface,
                        letterSpacing: -0.015,
                        height: 1.25,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text(
                      'Nomad explores your product like a real tester — no scripts, no setup.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColorsLight.textSecondary,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
