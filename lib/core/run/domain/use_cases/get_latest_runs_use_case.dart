import 'package:test_agent_mobile/core/run/domain/entity/runs_result.dart';
import 'package:test_agent_mobile/core/run/domain/repo/run_repo.dart';

class GetLatestRunsUseCase {
  final RunRepo runRepo;

  GetLatestRunsUseCase({required this.runRepo});

  Future<RunsResult> execute({int limit = 5}) {
    return runRepo.getLatestRuns(limit);
  }
}