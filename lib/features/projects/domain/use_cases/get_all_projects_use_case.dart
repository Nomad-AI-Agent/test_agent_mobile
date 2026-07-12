import 'package:test_agent_mobile/features/projects/domain/entities/projects_result.dart';
import 'package:test_agent_mobile/features/projects/domain/repo/projects_repo.dart';

class GetAllProjectsUseCase {
  final ProjectsRepo projectsRepo;
  GetAllProjectsUseCase({required this.projectsRepo});

  Future<ProjectsResult> execute() {
    return projectsRepo.getProjects();
  }
}