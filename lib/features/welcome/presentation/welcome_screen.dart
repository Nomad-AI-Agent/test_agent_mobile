import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/routing/routes.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/utils/app_assets.dart';
import 'package:test_agent_mobile/core/widgets/animation/staggered_fade_slide_mixin.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin, StaggeredFadeSlideMixin {
  static const int _logoIndex = 0;
  static const int _titleIndex = 1;
  static const int _cardsIndex = 2;
  static const int _buttonIndex = 3;

  @override
  void initState() {
    super.initState();
    initStaggeredAnimation(vsync: this, itemsCount: 4);
  }

  @override
  void dispose() {
    disposeStaggeredAnimation();
    super.dispose();
  }

  void _onStartPressed() {
   context.go(Routes.onboardingScreen);
  }

  Widget _infoCard(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColorsLight.surface,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow:const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 20,
            offset:  Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: AppColorsLight.surfaceContainerLow,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(icon, size: 18.sp, color: AppColorsLight.onSurface),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColorsLight.textSecondary,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 64.h),
                  animatedItem(
                    index: _logoIndex,
                    child: Image.asset(
                      Assets.assetsImagesLogoWhite,
                      fit: BoxFit.contain,
                      height: 120.h,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  animatedItem(
                    index: _titleIndex,
                    child: Text(
                      'Nomad Agent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Newsreader',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColorsLight.onSurface,
                        letterSpacing: -0.015,
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  animatedItem(
                    index: _cardsIndex,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _infoCard(
                            Icons.explore_outlined,
                            'Explores your product like a real tester — no scripts, no setup.',
                          ),
                          _infoCard(
                            Icons.visibility_outlined,
                            'Watch every run live, with clear pass/fail results.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            animatedItem(
              index: _buttonIndex,
              child: Padding(
                padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 32.h),
                child: SizedBox(
                  width: double.infinity,
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: _onStartPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColorsLight.primary,
                      foregroundColor: AppColorsLight.surface,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Icon(Icons.arrow_forward_rounded, size: 18.sp),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}