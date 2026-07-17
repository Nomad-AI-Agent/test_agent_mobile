import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/widgets/error_state_view.dart';
import 'package:test_agent_mobile/features/dashboard/data/mapper/run_to_sequence_mapper.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/stat_item.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/dashboard_notifier.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/dashboard_provider.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/latest_run_notifier.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/sequence_card.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/stats_grid.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardProvider);
    final latestRunsState = ref.watch(latestRunsProvider);
    final isLoading = ref.watch(isDashboardLoadingProvider);

    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: SafeArea(
        child: Builder(
          builder: (context) {
            if (isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (dashboardState.hasError) {
              return ErrorStateView(
                error: dashboardState.error!,
                onRetry: () => ref.read(dashboardProvider.notifier).refresh(),
              );
            }

            if (latestRunsState.hasError) {
              return ErrorStateView(
                error: latestRunsState.error!,
                onRetry: () => ref.read(latestRunsProvider.notifier).refresh(),
              );
            }

            final status = dashboardState.value!.status;
            final runs = latestRunsState.value!.runs;

            return Padding(
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
                  Expanded(
                    child: runs.isEmpty
                        ? const Center(child: Text('No runs yet.'))
                        : ListView.separated(
                            itemCount: runs.length,
                            separatorBuilder: (_, _) => SizedBox(height: 10.h),
                            itemBuilder: (context, index) {
                              final run = runs[index];
                              return SequenceCard(
                                sequence: run.toSequenceItem(),
                                onTap: () {},
                              );
                            },
                          ),
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
