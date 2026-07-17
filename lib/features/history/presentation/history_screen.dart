import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/widgets/error_state_view.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/latest_run_notifier.dart';
import 'package:test_agent_mobile/features/history/presentation/logic/history_pagination_notifier.dart';
import 'package:test_agent_mobile/features/history/presentation/logic/history_providers.dart';
import 'package:test_agent_mobile/features/history/presentation/widgets/history_header.dart';
import 'package:test_agent_mobile/features/history/presentation/widgets/history_search_bar.dart';
import 'package:test_agent_mobile/features/history/presentation/widgets/history_filter_chips.dart';
import 'package:test_agent_mobile/features/history/presentation/widgets/history_list.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/pagination_controls.dart';

class HistoryScreen extends ConsumerWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final runsState = ref.watch(latestRunsProvider);

    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HistoryHeader(),
              SizedBox(height: 20.h),
              const HistorySearchBar(),
              SizedBox(height: 12.h),
              const HistoryFilterChips(),
              SizedBox(height: 16.h),
              Expanded(
                child: runsState.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : runsState.hasError
                    ? ErrorStateView(
                        error: runsState.error!,
                        onRetry: () =>
                            ref.read(latestRunsProvider.notifier).refresh(),
                      )
                    : const HistoryList(),
              ),
              SizedBox(height: 12.h),
              Consumer(
                builder: (context, ref, _) {
                  final pageData = ref.watch(historyPageDataProvider);
                  return PaginationControls(
                    currentPage: pageData.currentPage,
                    totalPages: pageData.totalPages,
                    onPageChanged: (page) => ref
                        .read(historyPaginationProvider.notifier)
                        .setPage(page),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
