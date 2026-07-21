import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class ProjectSelector extends StatelessWidget {
  final String? selectedProjectId;
  final List<({String id, String name})> projects;
  final ValueChanged<String?> onChanged;

  const ProjectSelector({
    super.key,
    required this.selectedProjectId,
    required this.projects,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        color: AppColorsLight.surface,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColorsLight.outlineVariant),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String?>(
          value: selectedProjectId,

          isExpanded: true,
          dropdownColor: AppColorsLight.surface,
          borderRadius: BorderRadius.circular(10.r),
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: 20.sp,
            color: AppColorsLight.textSecondary,
          ),
          style: TextStyle(fontSize: 14.sp, color: AppColorsLight.onSurface),
          items: [
            DropdownMenuItem<String?>(
              value: null,
              child: Text(
                "-- No project --",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColorsLight.textSecondary,
                ),
              ),
            ),
            ...projects.map(
              (p) => DropdownMenuItem<String?>(
                value: p.id,
                child: Text(p.name, style: TextStyle(fontSize: 14.sp)),
              ),
            ),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
