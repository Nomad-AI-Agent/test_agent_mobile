import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/routing/routes.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/onboarding/data/pages_list.dart';
import 'package:test_agent_mobile/features/onboarding/presentation/widgets/logo_and_name.dart';
import 'package:test_agent_mobile/features/onboarding/presentation/widgets/onboarding_dots_indicator.dart';
import 'package:test_agent_mobile/features/onboarding/presentation/widgets/onboarding_items.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  

  bool get _isLastPage => _currentPage == pages.length - 1;

  void _onContinuePressed() {
    if (_isLastPage) {
      context.pushNamed(Routes.loginScreen); 
      return;
    }
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void _onSkipPressed() {
    context.pushNamed(Routes.loginScreen); 
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 8.h),
              Row(
                children: [
                  const LogoAndName(),
                  const Spacer(),
                  if (!_isLastPage)
                    TextButton(
                      onPressed: _onSkipPressed,
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColorsLight.textSecondary,
                        ),
                      ),
                    ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount:pages.length,
                  onPageChanged: (index) {
                    setState(() => _currentPage = index);
                  },
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: OnboardingItems(data: pages[index]),
                      ),
                    );
                  },
                ),
              ),
              OnboardingDotsIndicator(
                count: pages.length,
                currentIndex: _currentPage,
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: _onContinuePressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColorsLight.primary,
                    foregroundColor: AppColorsLight.surface,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                  ),
                  child: Text(
                    _isLastPage ? 'GET STARTED' : 'CONTINUE',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              if (_currentPage > 0)
                TextButton(
                  onPressed: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    );
                  },
                  child: Text(
                    'Back to previous step',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: AppColorsLight.textMuted,
                    ),
                  ),
                )
              else
                SizedBox(height: 36.h),
              SizedBox(height: 12.h),
            ],
          ),
        ),
      ),
    );
  }
}