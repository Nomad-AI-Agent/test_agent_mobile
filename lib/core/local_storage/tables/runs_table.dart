import 'package:drift/drift.dart';
import 'projects_table.dart';

@TableIndex(name: 'idx_runs_project_id', columns: {#projectId})
class Runs extends Table {
  TextColumn get id => text()(); 
  TextColumn get projectId =>
      text().nullable().references(Projects, #id, onDelete: KeyAction.cascade)();

  TextColumn get story => text()();
  TextColumn get url => text()();
  DateTimeColumn get createdAt => dateTime()();

  TextColumn get overallStatus => text()();

  BoolColumn get goalAchieved => boolean().nullable()();
  IntColumn get totalDurationMs => integer().nullable()();
  IntColumn get passed => integer().nullable()();
  IntColumn get failed => integer().nullable()();
  TextColumn get summary => text().nullable()();
  BoolColumn get canceled => boolean().nullable()();
  TextColumn get cancelReason => text().nullable()();
  BoolColumn get paused => boolean().nullable()();

  TextColumn get pauseCheckpointJson => text().nullable()();

  TextColumn get executionMode => text().nullable()();
  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}