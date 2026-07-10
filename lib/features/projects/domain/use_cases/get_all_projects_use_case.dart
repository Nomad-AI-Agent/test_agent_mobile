import 'package:test_agent_mobile/features/projects/data/models/project_model.dart';
import 'package:test_agent_mobile/features/projects/domain/repo/projects_repo.dart';

class GetAllProjectsUseCase {
  final ProjectsRepo projectsRepo;

  GetAllProjectsUseCase({required this.projectsRepo});

  Future<List<ProjectModel>> execute() async {
    return await projectsRepo.getProjects();
  }
}
