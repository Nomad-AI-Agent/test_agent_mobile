import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class PaginationControls extends StatelessWidget {
  final int currentPage; 
  final int totalPages;
  final ValueChanged<int> onPageChanged;

  const PaginationControls({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  List<int> _visiblePages() {
    const int windowSize = 5;
    if (totalPages <= windowSize) {
      return List.generate(totalPages, (i) => i + 1);
    }

    int start = currentPage - (windowSize ~/ 2);
    int end = currentPage + (windowSize ~/ 2);

    if (start < 1) {
      end += (1 - start);
      start = 1;
    }
    if (end > totalPages) {
      start -= (end - totalPages);
      end = totalPages;
    }
    start = start < 1 ? 1 : start;

    return List.generate(end - start + 1, (i) => start + i);
  }

  @override
  Widget build(BuildContext context) {
    if (totalPages <= 1) return const SizedBox.shrink();

    final pages = _visiblePages();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _NavButton(
          icon: Icons.chevron_left,
          enabled: currentPage > 1,
          onTap: () => onPageChanged(currentPage - 1),
        ),
        SizedBox(width: 8.w),
        ...pages.map((page) {
          final isActive = page == currentPage;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: _PageButton(
              label: '$page',
              isActive: isActive,
              onTap: () => onPageChanged(page),
            ),
          );
        }),
        SizedBox(width: 8.w),
        _NavButton(
          icon: Icons.chevron_right,
          enabled: currentPage < totalPages,
          onTap: () => onPageChanged(currentPage + 1),
        ),
      ],
    );
  }
}

class _PageButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _PageButton({
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36.w,
        height: 36.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive
              ? AppColorsLight.primary
              : AppColorsLight.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isActive
                ? AppColorsLight.primary
                : AppColorsLight.outlineVariant,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: isActive
                ? AppColorsLight.surface
                : AppColorsLight.textSecondary,
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final bool enabled;
  final VoidCallback onTap;

  const _NavButton({
    required this.icon,
    required this.enabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Container(
        width: 36.w,
        height: 36.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: enabled
                ? AppColorsLight.outlineVariant
                : AppColorsLight.surfaceContainerHighest,
          ),
        ),
        child: Icon(
          icon,
          size: 18.sp,
          color: enabled
              ? AppColorsLight.textSecondary
              : AppColorsLight.textMuted,
        ),
      ),
    );
  }
}