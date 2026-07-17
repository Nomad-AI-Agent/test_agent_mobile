import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:test_agent_mobile/features/dashboard/data/mapper/run_to_sequence_mapper.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/logic/latest_run_notifier.dart';
import 'package:test_agent_mobile/features/history/domain/entity/history_page_data.dart';
import 'package:test_agent_mobile/features/history/presentation/logic/history_pagination_notifier.dart';

final historySearchQueryProvider = StateProvider<String>((ref) => '');

final historyStatusFilterProvider = StateProvider<HistoryStatusFilter>(
  (ref) => HistoryStatusFilter.all,
);

final historySequencesProvider = Provider<List<SequenceItem>>((ref) {
  final runs = ref.watch(latestRunsProvider).value?.runs ?? [];
  return runs.map((r) => r.toSequenceItem()).toList();
});

bool _matchesFilter(SequenceItem item, HistoryStatusFilter filter) {
  switch (filter) {
    case HistoryStatusFilter.all:
      return true;
    case HistoryStatusFilter.pass:
      return item.status == SequenceStatus.pass;
    case HistoryStatusFilter.fail:
      return item.status == SequenceStatus.fail;
    case HistoryStatusFilter.canceled:
      return item.status == SequenceStatus.canceled;
  }
}

final filteredHistoryProvider = Provider<List<SequenceItem>>((ref) {
  final all = ref.watch(historySequencesProvider);
  final query = ref.watch(historySearchQueryProvider).trim().toLowerCase();
  final filter = ref.watch(historyStatusFilterProvider);

  return all.where((item) {
    final matchesStatus = _matchesFilter(item, filter);
    final matchesSearch =
        query.isEmpty ||
        item.title.toLowerCase().contains(query) ||
        item.url.toLowerCase().contains(query);
    return matchesStatus && matchesSearch;
  }).toList();
});

final historyPageDataProvider = Provider<HistoryPageData>((ref) {
  final all = ref.watch(historySequencesProvider);
  final filtered = ref.watch(filteredHistoryProvider);
  final currentPage = ref.watch(historyPaginationProvider);

  final totalPages = filtered.isEmpty
      ? 1
      : (filtered.length / historyPageSize).ceil();
  final safePage = currentPage > totalPages ? totalPages : currentPage;

  final startIndex = (safePage - 1) * historyPageSize;
  final endIndex = (startIndex + historyPageSize).clamp(0, filtered.length);
  final pageItems = filtered.isEmpty
      ? <SequenceItem>[]
      : filtered.sublist(startIndex, endIndex);

  return HistoryPageData(
    pageItems: pageItems,
    totalPages: totalPages,
    currentPage: safePage,
    hasRuns: all.isNotEmpty,
    hasMatches: filtered.isNotEmpty,
  );
});
