import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';

enum HistoryStatusFilter { all, pass, fail, canceled }

class HistoryPageData {
  final List<SequenceItem> pageItems;
  final int totalPages;
  final int currentPage;
  final bool hasRuns;
  final bool hasMatches;

  const HistoryPageData({
    required this.pageItems,
    required this.totalPages,
    required this.currentPage,
    required this.hasRuns,
    required this.hasMatches,
  });
}