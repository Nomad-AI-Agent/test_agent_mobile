import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:test_agent_mobile/core/local_storage/daos/projects_dao.dart';
import 'package:test_agent_mobile/core/local_storage/daos/runs_dao.dart';
import 'package:test_agent_mobile/core/local_storage/tables/run_strps_table.dart';

import 'tables/projects_table.dart';
import 'tables/runs_table.dart';
import 'tables/run_targets_table.dart';


part 'app_database.g.dart';

@DriftDatabase(
  tables: [Projects, Runs, RunTargets, RunSteps],
  daos: [ProjectsDao, RunsDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  // Bump this and add a MigrationStrategy step whenever you change a
  // table's shape after the app has shipped.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        beforeOpen: (details) async {
          // SQLite doesn't enforce foreign keys by default — this makes
          // the cascade deletes we declared in the tables actually work.
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}