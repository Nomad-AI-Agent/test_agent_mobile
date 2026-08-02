import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/projects/domain/entities/projects_result.dart';
import 'package:test_agent_mobile/features/run/data/models/target_row.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/multi_role_toggle.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/multi_target_section.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/project_selectors.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/recent_used_urls.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/run_section_card.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/section_label.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/target_url.dart';

class ScopeSection extends StatelessWidget {
  final String? selectedProjectId;
  final AsyncValue<ProjectsResult> projectsAsync;
  final ValueChanged<String?> onProjectChanged;

  final bool multiRoleEnabled;
  final ValueChanged<bool> onMultiRoleChanged;

  // Single-target mode
  final TextEditingController urlController;
  final List<String> recentUrls;
  final ValueChanged<String> onRecentUrlSelected;

  // Multi-target mode
  final List<TargetRow> targets;
  final VoidCallback onAddTarget;
  final ValueChanged<String> onRemoveTarget;
  final VoidCallback onRetryProjects;
  const ScopeSection({
    super.key,
    required this.selectedProjectId,
    required this.onProjectChanged,
    required this.multiRoleEnabled,
    required this.onMultiRoleChanged,
    required this.urlController,
    required this.recentUrls,
    required this.onRecentUrlSelected,
    required this.targets,
    required this.onAddTarget,
    required this.onRemoveTarget,
    required this.projectsAsync,
    required this.onRetryProjects,
  });

  @override
  Widget build(BuildContext context) {
    return RunSectionCard(
      sectionLabel: "01 — SCOPE",
      children: [
        const SectionLabel(
          icon: Icons.folder_outlined,
          title: "Project (optional)",
          description:
              "Associate this run with a project to keep related runs organized.",
        ),
        SizedBox(height: 12.h),
        projectsAsync.when(
          data: (result) => ProjectSelector(
            selectedProjectId: selectedProjectId,
            projects: result.projects
                .map((p) => (id: p.id, name: p.name))
                .toList(),
            onChanged: onProjectChanged,
          ),
          loading: () => const _ProjectSelectorPlaceholder(),
          error: (err, _) => _ProjectSelectorError(onRetry: onRetryProjects),
        ),
        SizedBox(height: 14.h),
        MultiRoleToggle(
          enabled: multiRoleEnabled,
          onChanged: onMultiRoleChanged,
        ),
        SizedBox(height: 20.h),
        if (multiRoleEnabled)
          MultiTargetSection(
            targets: targets,
            onAddTarget: onAddTarget,
            onRemoveTarget: onRemoveTarget,
          )
        else ...[
          const SectionLabel(
            icon: Icons.link,
            title: "Target URL",
            description:
                "Provide the initial URL where the agent will begin its journey.",
          ),
          SizedBox(height: 12.h),
          TargetUrlInput(controller: urlController),
          SizedBox(height: 16.h),
          RecentlyUsedUrls(urls: recentUrls, onSelected: onRecentUrlSelected),
        ],
      ],
    );
  }
}

class _ProjectSelectorPlaceholder extends StatelessWidget {
  const _ProjectSelectorPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: AppColorsLight.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(10.r),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: SizedBox(
        width: 16.w,
        height: 16.w,
        child: const CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}

class _ProjectSelectorError extends StatelessWidget {
  final VoidCallback onRetry;
  const _ProjectSelectorError({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColorsLight.surface,
        borderRadius: BorderRadius.circular(10.r),
        // ignore: deprecated_member_use
        border: Border.all(color: Colors.redAccent.withOpacity(0.4)),
      ),
      child: Row(
        children: [
          Icon(Icons.error_outline, size: 16.sp, color: Colors.redAccent),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              "Failed to load projects",
              style: TextStyle(fontSize: 12.sp, color: Colors.redAccent),
            ),
          ),
          TextButton(onPressed: onRetry, child: const Text("Retry")),
        ],
      ),
    );
  }
}
