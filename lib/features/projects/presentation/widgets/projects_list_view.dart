import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/widgets/error_state_view.dart';
import 'package:test_agent_mobile/features/projects/data/helper/project_model_mapper.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/get_projects_notifier.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/project_pagination_notifier.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/pagination_controls.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/project_card.dart';

class ProjectsListView extends ConsumerWidget {
  const ProjectsListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectsState = ref.watch(projectsListProvider);

    return projectsState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => ErrorStateView(
        error: err,
        onRetry: () => ref.read(projectsListProvider.notifier).refresh(),
      ),
      data: (result) {
        final pageData = ref.watch(projectsPageDataProvider);

        if (!pageData.hasProjects) {
          return const Center(child: Text('No projects yet.'));
        }
        if (!pageData.hasMatches) {
          return const Center(child: Text('No projects match your search.'));
        }

        return Column(
          children: [
            PaginationControls(
              currentPage: pageData.currentPage,
              totalPages: pageData.totalPages,
              onPageChanged: (page) =>
                  ref.read(projectsPaginationProvider.notifier).setPage(page),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () =>
                    ref.read(projectsListProvider.notifier).refresh(),
                child: ListView.separated(
                  itemCount: pageData.pageItems.length,
                  separatorBuilder: (_, _) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    final project = pageData.pageItems[index];
                    return ProjectCard(
                      project: project.toEntity(),
                      onTap: () {},
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
