// lib/features/history/presentation/widgets/history_filter_chips.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/history/domain/entity/history_page_data.dart';
import 'package:test_agent_mobile/features/history/presentation/logic/history_providers.dart';

class HistoryFilterChips extends ConsumerWidget {
  const HistoryFilterChips({super.key});

  String _label(HistoryStatusFilter filter) {
    switch (filter) {
      case HistoryStatusFilter.all:
        return "All";
      case HistoryStatusFilter.pass:
        return "Pass";
      case HistoryStatusFilter.fail:
        return "Fail";
      case HistoryStatusFilter.canceled:
        return "Canceled";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(historyStatusFilterProvider);

    return Wrap(
      spacing: 8.w,
      children: HistoryStatusFilter.values.map((filter) {
        final isActive = filter == selected;
        return GestureDetector(
          onTap: () =>
              ref.read(historyStatusFilterProvider.notifier).state = filter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: isActive
                  ? AppColorsLight.onSurface
                  : AppColorsLight.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(99.r),
              border: Border.all(
                color: isActive
                    ? AppColorsLight.onSurface
                    : AppColorsLight.outlineVariant,
              ),
            ),
            child: Text(
              _label(filter),
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: isActive
                    ? AppColorsLight.surface
                    : AppColorsLight.textSecondary,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
