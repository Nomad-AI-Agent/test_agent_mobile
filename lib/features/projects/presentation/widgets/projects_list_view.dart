import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/features/projects/data/helper/project_model_mapper.dart';
import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/get_projects_notifier.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/pagination_controls.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/project_card.dart';

const int _pageSize = 4;

class ProjectsListView extends ConsumerStatefulWidget {
  const ProjectsListView({super.key});

  @override
  ConsumerState<ProjectsListView> createState() => _ProjectsListViewState();
}

class _ProjectsListViewState extends ConsumerState<ProjectsListView> {
  int _currentPage = 1; // 1-based
  String _lastQuery = '';

  List<ProjectModel> _filterProjects(List<ProjectModel> all, String query) {
    if (query.trim().isEmpty) return all;
    final lowerQuery = query.trim().toLowerCase();
    return all.where((p) => p.name.toLowerCase().contains(lowerQuery)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final projectsState = ref.watch(projectsListProvider);
    final query = ref.watch(searchQueryProvider);

    if (query != _lastQuery) {
      _lastQuery = query;
      _currentPage = 1;
    }

    return projectsState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => Center(child: Text('Failed to load projects: $err')),
      data: (allProjects) {
        if (allProjects.isEmpty) {
          return const Center(child: Text('No projects yet.'));
        }

        final filtered = _filterProjects(allProjects, query);

        if (filtered.isEmpty) {
          return const Center(child: Text('No projects match your search.'));
        }

        final totalPages = (filtered.length / _pageSize).ceil();
        if (_currentPage > totalPages) {
          _currentPage = totalPages;
        }

        final startIndex = (_currentPage - 1) * _pageSize;
        final endIndex = (startIndex + _pageSize).clamp(0, filtered.length);
        final pageItems = filtered.sublist(startIndex, endIndex);

        return Column(
          children: [
            PaginationControls(
              currentPage: _currentPage,
              totalPages: totalPages,
              onPageChanged: (page) {
                setState(() => _currentPage = page);
              },
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () =>
                    ref.read(projectsListProvider.notifier).refresh(),
                child: ListView.separated(
                  itemCount: pageItems.length,
                  separatorBuilder: (_, _) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    final project = pageItems[index];
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
