import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class RecentlyUsedUrls extends StatelessWidget {
  final List<String> urls;
  final ValueChanged<String> onSelected;

  const RecentlyUsedUrls({
    super.key,
    required this.urls,
    required this.onSelected,
  });

  String _truncate(String url) {
    return url.length > 28 ? "${url.substring(0, 26)}..." : url;
  }

  @override
  Widget build(BuildContext context) {
    if (urls.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "RECENTLY USED",
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.8,
            color: AppColorsLight.textMuted,
          ),
        ),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: urls.map((url) {
            return GestureDetector(
              onTap: () => onSelected(url),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: AppColorsLight.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(99.r),
                ),
                child: Text(
                  _truncate(url),
                  style: TextStyle(fontSize: 12.sp, color: AppColorsLight.textSecondary),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}