// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/services.dart';
// import 'package:path/path.dart';
// import 'dart:async';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
//
// class DatabaseHelper {
//   static final databaseName = "users.db";
//   static final databaseVersion = 1;
//
//   static final table = 'users';
//
//   static final columnId = 'id';
//   static final columnUsername = 'username';
//   static final columnPassword = 'password';
//
//   DatabaseHelper._privateConstructor();
//
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
//
//   static Database? database;
//
//   Future<Database?> get _database async {
//     if (database != null) return database;
//     database = await _initDatabase();
//     return database;
//   }
//
//   _initDatabase() async {
//     String path = join(await getDatabasesPath(), databaseName);
//     return await openDatabase(path,
//         version: databaseVersion, onCreate: _onCreate);
//   }
//
//   Future _onCreate(Database db, int version) async {
//     await db.execute('''
//           CREATE TABLE $table (
//             $columnId INTEGER PRIMARY KEY,
//             $columnUsername TEXT NOT NULL,
//             $columnPassword TEXT NOT NULL
//           )
//           ''');
//   }
//
//   Future<int?> insert(Map<String, dynamic> row) async {
//     Database? db = await DatabaseHelper.database;
//     return await db?.insert(table, row);
//   }
//
//   Future<List<Map<String, dynamic>>?> queryAllRows() async {
//     Database? db = await DatabaseHelper.database;
//     return await db?.query(table);
//   }
//
//   Future<Object?> queryUsername(String username) async {
//     Database? db = await DatabaseHelper.database;
//     List<Map<String, Object?>>? maps = await db?.query(table,
//         columns: [columnId],
//         where: '$columnUsername = ?',
//         whereArgs: [username]);
//     if (maps!.length > 0) {
//       return maps.first[columnId];
//     }
//     return null;
//   }
//
//   Future<Object?> checkUser(String username, String password) async {
//     Database? db = await DatabaseHelper.database;
//     List<Map<String, Object?>>? maps = await db?.query(table,
//         columns: [columnId],
//         where: '$columnUsername = ? AND $columnPassword = ?',
//         whereArgs: [username, password]);
//     if (maps!.length > 0) {
//       return maps.first[columnId];
//     }
//     return null;
//   }
// }
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static Database? _database;

  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper!;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'database.db');

    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  void _createDb(Database db, int version) async {
    await db.execute(
        'CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)');
  }

  Future<int> insertUser(Map<String, dynamic> user) async {
    final db = await database;
    return await db.insert('users', user);
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await database;
    return await db.query('users');
  }
}

String _contentOfFile = "";

Future<String> getFilePath() async {
  Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();
  String appDocumentsPath = appDocumentsDirectory.path;
  String filePath = '$appDocumentsPath/demoTextFile.txt';

  return filePath;
}

void saveFile() async {
  File file = File(await getFilePath());
  file.writeAsString(
      "This is my demo text that will be saved to : demoTextFile.txt");
}

void readFile() async {
  File file = File(await getFilePath());
  String fileContent = await file.readAsString();

  print('File Content: $fileContent');
}
