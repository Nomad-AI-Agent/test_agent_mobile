import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/stat_item.dart';
import 'package:test_agent_mobile/core/widgets/state_card.dart';

class ProjectDetailsDashboard extends StatelessWidget {
  const ProjectDetailsDashboard({super.key});

  static const List<Color> _valueColors = [
    AppColorsLight.onSurface,
    Colors.green,
    Colors.red,
    Colors.amber,
  ];
  static List<StatItem> stats = const [
    StatItem(label: "Total Runs", value: "12"),
    StatItem(label: "Success", value: "10"),
    StatItem(label: "Faild", value: "1"),
    StatItem(label: "Inprogress", value: "1"),
  ];

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
        return StatCard(
          label: stat.label,
          value: stat.value,
          color: _valueColors[index % _valueColors.length],
        );
      },
    );
  }
}
