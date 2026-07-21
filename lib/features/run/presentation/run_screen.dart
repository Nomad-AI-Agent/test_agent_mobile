import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/get_projects_notifier.dart';
import 'package:test_agent_mobile/features/run/presentation/logic/run_form_notifier.dart';
import 'package:test_agent_mobile/features/run/presentation/logic/run_providers.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/narrtive_section.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/run_action_bar.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/run_header.dart';
import 'package:test_agent_mobile/features/run/presentation/widgets/scope_section.dart';

class RunScreen extends ConsumerWidget {
  const RunScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(runFormProvider);
    final notifier = ref.read(runFormProvider.notifier);
    final projectsAsync = ref.watch(projectsListProvider);
    final recentUrls = ref.watch(recentUrlsProvider);

    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              const RunHeader(),
              SizedBox(height: 20.h),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScopeSection(
                        selectedProjectId: formState.selectedProjectId,
                        projectsAsync: projectsAsync,
                        onProjectChanged: notifier.setProject,
                        multiRoleEnabled: formState.multiRoleEnabled,
                        onMultiRoleChanged: notifier.setMultiRole,
                        urlController: notifier.urlController,
                        recentUrls: recentUrls,
                        onRecentUrlSelected: notifier.setUrlFromRecent,
                        targets: formState.targets,
                        onAddTarget: notifier.addTarget,
                        onRemoveTarget: notifier.removeTarget,
                        onRetryProjects: () =>
                            ref.read(projectsListProvider.notifier).refresh(),
                      ),
                      SizedBox(height: 20.h),
                      NarrativeSection(
                        controller: notifier.userStoryController,
                      ),
                      SizedBox(height: 24.h),
                      RunActionBar(
                        canSubmit: formState.canSubmit,
                        isSubmitting: formState.isSubmitting,
                        onSubmit: notifier.submit,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
