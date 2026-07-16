import 'package:test_agent_mobile/core/run/domain/entity/runs_result.dart';
import 'package:test_agent_mobile/core/run/domain/repo/run_repo.dart';

class GetAllRunsUseCase {
  final RunRepo runRepo;

  GetAllRunsUseCase({required this.runRepo});

  Future<RunsResult> execute() {
    return runRepo.getAllRuns();
  }
}