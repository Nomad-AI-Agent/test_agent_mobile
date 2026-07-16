import 'package:test_agent_mobile/core/run/data/models/runs/latest_run_model.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';

extension LatestRunModelToSequenceItem on LatestRunModel {
  SequenceItem toSequenceItem() {
    return SequenceItem(
      id: id,
      title: story,
      url: url,
      timestamp: DateTime.fromMillisecondsSinceEpoch(createdAt),
      durationSeconds: totalDurationMs! / 1000,
      passedSteps: passed ?? 0,
      failedSteps: failed ?? 0,
      status: _mapStatus(),
      statusReason: canceled == true ? cancelReason : null,
    );
  }

  SequenceStatus _mapStatus() {
    if (canceled == true) return SequenceStatus.canceled;

    switch (overallStatus.toLowerCase()) {
      case 'pass':
        return SequenceStatus.pass;
      case 'fail':
        return SequenceStatus.fail;
      default:
        return SequenceStatus.fail;
    }
  }
}
