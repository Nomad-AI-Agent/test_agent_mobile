import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/onboarding/data/onboarding_page_model.dart';

class OnboardingItems extends StatelessWidget {
  final OnboardingPageModel data;

  const OnboardingItems({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.asset(
            data.image,
            width: double.maxFinite,
            height: 300.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          data.title,
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "Newsreader",
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.h),
        Text(
          data.subtitle,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: AppColorsDark.primaryFixed,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}