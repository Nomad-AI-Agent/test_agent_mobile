import 'package:drift/drift.dart';


class Projects extends Table {
  TextColumn get id => text()(); 
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  IntColumn get runsCount => integer().withDefault(const Constant(0))();

  DateTimeColumn get lastRunDate => dateTime()();
  TextColumn get userId => text().nullable()();

  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}