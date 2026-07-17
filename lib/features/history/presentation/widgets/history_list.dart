import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/sequence_card.dart';
import 'package:test_agent_mobile/features/history/presentation/logic/history_providers.dart';

class HistoryList extends ConsumerWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageData = ref.watch(historyPageDataProvider);

    if (!pageData.hasRuns) {
      return const Center(child: Text('No runs yet.'));
    }

    if (!pageData.hasMatches) {
      return const Center(child: Text('No results match your search/filter.'));
    }

    return ListView.separated(
      itemCount: pageData.pageItems.length,
      separatorBuilder: (_, _) => SizedBox(height: 10.h),
      itemBuilder: (context, index) {
        final sequence = pageData.pageItems[index];
        return SequenceCard(sequence: sequence, onTap: () {});
      },
    );
  }
}