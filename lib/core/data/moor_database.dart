import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

// @DataClassName('mealmoor')
class Favorite extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength().withLength(min: 1, max: 50)();
  TextColumn get image => text().withLength().withLength(min: 1, max: 200)();
  TextColumn get categories =>
      text().withLength().withLength(min: 1, max: 50)();
  TextColumn get tags => text().withLength().withLength(min: 1, max: 200)();
  TextColumn get idMeal => text().withLength().withLength(min: 4, max: 20)();
  BoolColumn get completed => boolean().withDefault(Constant(false))();
}

@UseMoor(tables: [Favorite])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true));

  @override
  int get schemaVersion => 1;
  getAllData() => select(favorite).get();
  wacthAllData() => select(favorite).watch();
  insertData(favorites) => into(favorite).insert(favorites);
  deleteFavorite(favoriteDelete) => delete(favorite).delete(favoriteDelete);
}
// }
