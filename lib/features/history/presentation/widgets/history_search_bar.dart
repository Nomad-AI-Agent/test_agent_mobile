// lib/features/history/presentation/widgets/history_search_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/history/presentation/logic/history_providers.dart';

class HistorySearchBar extends ConsumerWidget {
  const HistorySearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      cursorColor: AppColorsLight.onSurface,
      onChanged: (value) =>
          ref.read(historySearchQueryProvider.notifier).state = value,
      style: TextStyle(fontSize: 14.sp),
      decoration: InputDecoration(
        hintText: "Search by title or URL...",
        hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey.shade400),
        prefixIcon: Icon(
          Icons.search,
          size: 20.sp,
          color: Colors.grey.shade500,
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
        contentPadding: EdgeInsets.symmetric(vertical: 12.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.grey.shade400, width: 1.2),
        ),
      ),
    );
  }
}
