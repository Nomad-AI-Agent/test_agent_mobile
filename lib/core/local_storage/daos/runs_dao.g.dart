// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runs_dao.dart';

// ignore_for_file: type=lint
mixin _$RunsDaoMixin on DatabaseAccessor<AppDatabase> {
  $ProjectsTable get projects => attachedDatabase.projects;
  $RunsTable get runs => attachedDatabase.runs;
  $RunTargetsTable get runTargets => attachedDatabase.runTargets;
  $RunStepsTable get runSteps => attachedDatabase.runSteps;
  RunsDaoManager get managers => RunsDaoManager(this);
}

class RunsDaoManager {
  final _$RunsDaoMixin _db;
  RunsDaoManager(this._db);
  $$ProjectsTableTableManager get projects =>
      $$ProjectsTableTableManager(_db.attachedDatabase, _db.projects);
  $$RunsTableTableManager get runs =>
      $$RunsTableTableManager(_db.attachedDatabase, _db.runs);
  $$RunTargetsTableTableManager get runTargets =>
      $$RunTargetsTableTableManager(_db.attachedDatabase, _db.runTargets);
  $$RunStepsTableTableManager get runSteps =>
      $$RunStepsTableTableManager(_db.attachedDatabase, _db.runSteps);
}
