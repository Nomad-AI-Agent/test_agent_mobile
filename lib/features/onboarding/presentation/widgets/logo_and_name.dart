import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_text_sizes.dart';
import 'package:test_agent_mobile/core/utils/app_assets.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.assetsImagesLogoWhite, width: 40.w, height: 40.h),
        SizedBox(width: 8.w),
        Text(
          'Nomad',
          style: TextStyle(
            fontFamily: 'Newsreader',
            fontSize: AppTextSizes.xxl.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
