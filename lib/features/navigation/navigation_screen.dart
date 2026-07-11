import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class NavigationScreen extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NavigationScreen({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<_NavItemData> _items = const [
    _NavItemData(icon: Icons.dashboard_outlined, label: 'Dashboard'),
    _NavItemData(icon: Icons.play_circle_outline, label: 'Run'),
    _NavItemData(icon: Icons.history, label: 'History'),
    _NavItemData(icon: Icons.folder_outlined, label: 'Projects'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      width: double.infinity,
      height: 64.h,
      decoration: BoxDecoration(
        gradient:const LinearGradient(
          colors: [
            AppColorsLight.primary,
            AppColorsLight.primaryContainer,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(_items.length, (index) {
          final isActive = widget.currentIndex == index;
          return _AnimatedNavItem(
            icon: _items[index].icon,
            isActive: isActive,
            onTap: () => widget.onTap(index),
          );
        }),
      ),
    );
  }
}

class _NavItemData {
  final IconData icon;
  final String label;
  const _NavItemData({required this.icon, required this.label});
}

class _AnimatedNavItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const _AnimatedNavItem({
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (child, animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child: Column(
          key: ValueKey(isActive),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 3.h,
              width: isActive ? 18.w : 0,
              margin: EdgeInsets.only(bottom: 8.h),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            AnimatedScale(
              scale: isActive ? 1.15 : 1.0,
              duration: const Duration(milliseconds: 250),
              curve: Curves.elasticOut,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: isActive
                      // ignore: deprecated_member_use
                      ? Colors.white.withOpacity(0.12)
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: isActive ? Colors.white : Colors.white54,
                  size: 24.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}