import 'package:test_agent_mobile/core/run/data/models/runs/latest_run_model.dart';

enum RunsSource { network, cache }

class RunsResult {
  final List<LatestRunModel> runs;
  final RunsSource source;

  const RunsResult({required this.runs, required this.source});

  RunsResult copyWith({List<LatestRunModel>? runs, RunsSource? source}) {
    return RunsResult(
      runs: runs ?? this.runs,
      source: source ?? this.source,
    );
  }
}