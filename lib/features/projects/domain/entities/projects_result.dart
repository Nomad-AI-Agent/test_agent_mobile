import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';

enum ProjectsSource { network, cache }

class ProjectsResult {
  final List<ProjectModel> projects;
  final ProjectsSource source;
  const ProjectsResult({required this.projects, required this.source});
}