import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/stat_item.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/sequence_card.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/stats_grid.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Evening,\nTester.",
                style: TextStyle(
                  fontFamily: "Newsreader",
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColorsLight.onSurface,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                "Here is the current state of your test environments.",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColorsLight.textSecondary,
                ),
              ),
              SizedBox(height: 24.h),
              const StatsGrid(
                stats: [
                  StatItem(label: "Total Executions", value: "9"),
                  StatItem(label: "Success Rate", value: "78%"),
                  StatItem(label: "Avg Duration", value: "96.6s"),
                  StatItem(label: "Last 24H", value: "0"),
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
        ),
      ),
    );
  }
}
