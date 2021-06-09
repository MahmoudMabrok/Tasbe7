import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class DBHelper{
  static Future<Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'praises.db'),
        onCreate: (db, version) {
          return db.execute(
              'CREATE TABLE praise_table(id INTEGER PRIMARY KEY , praiseName TEXT, praiseValue INTEGER)');
        }, version: 1);
  }

  static Future<List<Map<String, Object>>> addPraise(String table, Map<String, Object> data) async {
    final db = await DBHelper.database();
    db.insert(
      table,
      data,
    );
    Future<List<Map<String, Object>>> id = db.query(table, orderBy: "id DESC", limit: 1);
    return id;
  }

  static Future<void> removePraise(int id) async {
    final db = await DBHelper.database();
    await db.rawDelete('DELETE FROM praise_table WHERE id = '+id.toString());
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DBHelper.database();
    return db.query(table);
  }

  static Future<void> editValue(int id , int value) async{
    final db = await DBHelper.database();
    db.rawUpdate('UPDATE praise_table SET praiseValue = '+value.toString()+' WHERE id = '+id.toString());
  }

  static Future<void> editName(int id , String name , int value) async{
    print(id);
    print(name);
    print(value);
    final db = await DBHelper.database();
    final batch = db.batch();
    batch.update('praise_table', {'praiseName': name , 'praiseValue' : value.toString()}, where: 'id = '+id.toString());
    await batch.commit();
  }
}