import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/stat_item.dart';

class ProjectDetailsData {
  final String projectName;
  final DateTime createdAt;
  final List<StatItem> stats;
  final List<SequenceItem> sequences;

  const ProjectDetailsData({
    required this.projectName,
    required this.createdAt,
    required this.stats,
    required this.sequences,
  });
}
