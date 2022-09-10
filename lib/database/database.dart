import 'package:drift/drift.dart';

part 'database.g.dart';

class Names extends Table {
  IntColumn get regno => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get place => text()();
}

abstract class NamesView extends View {
  Names get names;

  @override
  Query as() => select([names.name]).from(names);
}

@DriftDatabase(tables: [Names], views: [NamesView])
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 2;
}
