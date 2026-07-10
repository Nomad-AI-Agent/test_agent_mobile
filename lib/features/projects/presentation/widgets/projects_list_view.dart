import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/features/projects/data/helper/project_model_mapper.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/get_projects_notifier.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/project_card.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/project_load_more_indicator.dart';

class ProjectsListView extends ConsumerStatefulWidget {
  const ProjectsListView({super.key});

  @override
  ConsumerState<ProjectsListView> createState() => _ProjectsListViewState();
}

class _ProjectsListViewState extends ConsumerState<ProjectsListView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(projectsListProvider.notifier).loadMore();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final projectsState = ref.watch(projectsListProvider);

    return projectsState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => Center(child: Text('Failed to load projects: $err')),
      data: (state) {
        if (state.allProjects.isEmpty) {
          return const Center(child: Text('No projects yet.'));
        }
        return RefreshIndicator(
          onRefresh: () => ref.read(projectsListProvider.notifier).refresh(),
          child: ListView.separated(
            controller: _scrollController,
            itemCount: state.visibleProjects.length + (state.hasMore ? 1 : 0),
            separatorBuilder: (_, _) => SizedBox(height: 12.h),
            itemBuilder: (context, index) {
              if (index >= state.visibleProjects.length) {
                return const ProjectsLoadMoreIndicator();
              }

              final project = state.visibleProjects[index];
              return ProjectCard(
                project: project.toEntity(),
                onTap: () {},
              );
            },
          ),
        );
      },
    );
  }
}