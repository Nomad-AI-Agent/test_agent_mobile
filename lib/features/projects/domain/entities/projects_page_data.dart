import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

class ProjectsPageData {
  final List<ProjectModel> pageItems;
  final int totalPages;
  final int currentPage;
  final bool hasProjects;
  final bool hasMatches;

  const ProjectsPageData({
    required this.pageItems,
    required this.totalPages,
    required this.currentPage,
    required this.hasProjects,
    required this.hasMatches,
  });
}
