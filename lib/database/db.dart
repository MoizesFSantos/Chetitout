import 'dart:convert';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) {
      return _database;
      print('Connected');
    } else {
      return await _initDatabase();
    }
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'task.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_task);
    // acredito que nao precisa de uma table de lista
    //await db.execute(_subtask);
    //acredito que vai ser necesssario a tabela lista  e uma outra tabela lista/subtask com id , id da st e id da lista, created_at ...
  }

  String get _task => '''
    CREATE TABLE tasks(
      id INTEGER PRIMARY KEY AUTOINCREMENT
      title TEXT 
      data DATETIME
      isdone INTEGER
    )

  ''';
}
