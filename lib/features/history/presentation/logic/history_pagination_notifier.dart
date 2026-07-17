import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/history/presentation/logic/history_providers.dart';

const int historyPageSize = 6;

class HistoryPaginationNotifier extends Notifier<int> {
  @override
  int build() {
    ref.listen(historySearchQueryProvider, (previous, next) {
      if (previous != next) state = 1;
    });
    ref.listen(historyStatusFilterProvider, (previous, next) {
      if (previous != next) state = 1;
    });
    return 1;
  }

  void setPage(int page) => state = page;
}

final historyPaginationProvider =
    NotifierProvider<HistoryPaginationNotifier, int>(
  HistoryPaginationNotifier.new,
);