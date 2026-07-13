import 'package:test_agent_mobile/core/run/domain/entity/runs_result.dart';

abstract class RunRepo {
  Future<RunsResult> getAllRuns();
  Future<RunsResult> getRunsByProjectId(String projectId);
  Future<RunsResult> getLatestRuns(int limit);
}