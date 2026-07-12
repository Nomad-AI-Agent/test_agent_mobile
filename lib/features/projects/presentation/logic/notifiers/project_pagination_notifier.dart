import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/project_provider.dart';

const int projectsPageSize = 4;

class ProjectsPaginationNotifier extends Notifier<int> {
  @override
  int build() {
    ref.listen(searchQueryProvider, (previous, next) {
      if (previous != next) {
        state = 1;
      }
    });
    return 1;
  }

  void setPage(int page) => state = page;
}

final projectsPaginationProvider =
    NotifierProvider<ProjectsPaginationNotifier, int>(
  ProjectsPaginationNotifier.new,
);
