import 'package:test_agent_mobile/core/run/domain/entity/runs_result.dart';
import 'package:test_agent_mobile/core/run/domain/repo/run_repo.dart';

class GetProjectRunsUseCase {
  final RunRepo runRepo;

  GetProjectRunsUseCase({required this.runRepo});

  Future<RunsResult> execute(String projectId) {
    return runRepo.getRunsByProjectId(projectId);
  }
}