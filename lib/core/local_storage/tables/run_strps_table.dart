import 'package:drift/drift.dart';
import 'runs_table.dart';

@TableIndex(name: 'idx_run_steps_run_id', columns: {#runId})
class RunSteps extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get runId =>
      text().references(Runs, #id, onDelete: KeyAction.cascade)();

  TextColumn get type => text().nullable()();
  IntColumn get stepIndex => integer().nullable()();
  TextColumn get action => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get status => text().nullable()(); // raw string, same as Runs
  IntColumn get durationMs => integer().nullable()();
  TextColumn get error => text().nullable()();
  TextColumn get target => text().nullable()();
  TextColumn get value => text().nullable()();

  TextColumn get screenshotPath => text().nullable()();

  IntColumn get targetIndex => integer().nullable()();
}