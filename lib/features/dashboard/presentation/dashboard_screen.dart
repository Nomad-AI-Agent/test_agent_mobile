import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/widgets/error_state_view.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/stat_item.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/dashboard_notifier.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/sequence_card.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/stats_grid.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardProvider);

    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: SafeArea(
        child: dashboardState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => ErrorStateView(
            error: err,
            onRetry: () => ref.read(dashboardProvider.notifier).refresh(),
          ),
          data: (result) {
            final status = result.status;
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DashboardHeader(),
                  SizedBox(height: 24.h),
                  StatsGrid(
                    stats: [
                      StatItem(
                        label: "Total Executions",
                        value: "${status.total}",
                      ),
                      StatItem(
                        label: "Success Rate",
                        value: status.successRate,
                      ),
                      StatItem(label: "Avg Duration", value: status.avgDur),
                      StatItem(
                        label: "Last 24H",
                        value: "${status.runsLast24h}",
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Recent Sequences",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Newsreader",
                      fontSize: 20.sp,
                      color: AppColorsLight.onSurface,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SequenceCard(
                    sequence: SequenceItem(
                      id: "c5d5df56",
                      title:
                          "user asks about thinktree will see text input area put in it the search keyword and submit it",
                      url: "https://chatgpt.com/",
                      timestamp: DateTime(2026, 6, 28, 22, 40, 13),
                      durationSeconds: 195.8,
                      passedSteps: 13,
                      failedSteps: 0,
                      status: SequenceStatus.pass,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}