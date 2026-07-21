import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/run/data/models/target_row.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/section_label.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/target_role_row.dart';

class MultiTargetSection extends StatelessWidget {
  final List<TargetRow> targets;
  final VoidCallback onAddTarget;
  final ValueChanged<String> onRemoveTarget;

  const MultiTargetSection({
    super.key,
    required this.targets,
    required this.onAddTarget,
    required this.onRemoveTarget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionLabel(
          icon: Icons.link,
          title: "Targets",
          description: "Add one target per role. The agent will process them in order.",
        ),
        SizedBox(height: 12.h),
        ...targets.map((target) {
          return Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: TargetRoleRow(
              target: target,
              onRemove: targets.length > 1 ? () => onRemoveTarget(target.id) : null,
            ),
          );
        }),
        SizedBox(height: 4.h),
        GestureDetector(
          onTap: onAddTarget,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add, size: 16.sp, color: AppColorsLight.onSurface),
              SizedBox(width: 6.w),
              Text(
                "Add Target",
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColorsLight.onSurface,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}