import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/projects_table.dart';

part 'projects_dao.g.dart';

@DriftAccessor(tables: [Projects])
class ProjectsDao extends DatabaseAccessor<AppDatabase>
    with _$ProjectsDaoMixin {
  ProjectsDao(super.db);


  Stream<List<Project>> watchAll() {
    return (select(projects)
          ..orderBy([(t) => OrderingTerm.desc(t.lastRunDate)]))
        .watch();
  }

  Future<List<Project>> getAll() {
    return (select(projects)
          ..orderBy([(t) => OrderingTerm.desc(t.lastRunDate)]))
        .get();
  }

  Future<List<Project>> search(String query) {
    final pattern = '%$query%';
    return (select(projects)..where((t) => t.name.like(pattern))).get();
  }

  Future<Project?> getById(String id) {
    return (select(projects)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  /// Upsert (insert or replace) — used when refreshing the cache from
  /// the API response.
  Future<void> upsertAll(List<ProjectsCompanion> rows) async {
    await batch((b) {
      b.insertAll(projects, rows, mode: InsertMode.insertOrReplace);
    });
  }

  Future<void> deleteById(String id) {
    return (delete(projects)..where((t) => t.id.equals(id))).go();
  }

  Future<void> clearAll() => delete(projects).go();
}