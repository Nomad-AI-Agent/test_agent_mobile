import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/stat_item.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/state_card.dart';

class StatsGrid extends StatelessWidget {
  final List<StatItem> stats;

  const StatsGrid({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: stats.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        final stat = stats[index];
        return StatCard(label: stat.label, value: stat.value);
      },
    );
  }
}