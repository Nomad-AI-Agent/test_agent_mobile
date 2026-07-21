import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/run_section_card.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/section_label.dart';

class NarrativeSection extends StatelessWidget {
  final TextEditingController controller;

  const NarrativeSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return RunSectionCard(
      sectionLabel: "02 — NARRATIVE",
      children: [
        const SectionLabel(
          icon: Icons.menu_book_outlined,
          title: "User Story",
          description:
              "Describe the user journey in natural language. The agent will interpret these instructions.",
        ),
        SizedBox(height: 12.h),
        TextField(
          controller: controller,
          maxLines: 5,
          minLines: 5,
          style: TextStyle(fontSize: 14.sp, color: AppColorsLight.onSurface),
          decoration: InputDecoration(
            hintText:
                "User tries to log in with valid credentials, navigates to the dashboard, and verifies their profile information is displayed correctly...",
            hintStyle: TextStyle(fontSize: 14.sp, color: AppColorsLight.textMuted),
            filled: true,
            fillColor: AppColorsLight.surface,
            contentPadding: EdgeInsets.all(14.w),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: AppColorsLight.outlineVariant),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: AppColorsLight.outlineVariant),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: AppColorsLight.onSurface, width: 1.2),
            ),
          ),
        ),
      ],
    );
  }
}