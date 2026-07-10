import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/domain/repo/projects_repo.dart';

class CreateProjectUseCase {
  final ProjectsRepo projectsRepo;
  CreateProjectUseCase({required this.projectsRepo});
  Future<void> execute(CreateProjectModel createProjectModel) async {
    await projectsRepo.createProject(createProjectModel);
  }
}
