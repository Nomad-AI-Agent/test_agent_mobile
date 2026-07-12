import 'package:drift/drift.dart';
import 'runs_table.dart';

@TableIndex(name: 'idx_run_targets_run_id', columns: {#runId})
class RunTargets extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get runId =>
      text().references(Runs, #id, onDelete: KeyAction.cascade)();

  TextColumn get url => text()();
  TextColumn get role => text().nullable()();
}