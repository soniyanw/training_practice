import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:practice/database/database.dart';

Future<void> useDatabase() async {
  final db = Database(NativeDatabase.memory());
  await db
      .into(db.names)
      .insert(NamesCompanion.insert(name: "Soniya", place: "Melbourne"));
  await db
      .into(db.names)
      .insert(NamesCompanion.insert(name: "Sonu", place: "Chennai"));
  await db
      .into(db.names)
      .insert(NamesCompanion.insert(name: "Soni", place: "Bangalore"));
  await db
      .into(db.names)
      .insert(NamesCompanion.insert(name: "Sonali", place: "Chennai"));
  (await db.select(db.names).get()
    ..where((element) => element.place == "Chennai").forEach(print));
  print("----");
  (await db.select(db.names).get()
    ..where((element) => element.name == "Soniya").forEach(print));
  print("----");
  (await db.select(db.names)
        ..orderBy([(t) => OrderingTerm(expression: t.name)]))
      .get()
      .then((value) => print(value));
}
