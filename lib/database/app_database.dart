import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static Database? _db;

  static Future<Database> get instance async {
    _db ??= await openDatabase(
      join(await getDatabasesPath(), 'stories.db'),
      version: 1,
      onCreate: (db, _) async {
        await db.execute('''
          CREATE TABLE settings (
            id INTEGER PRIMARY KEY,
            language_code TEXT
          )
        ''');
      },
    );
    return _db!;
  }

  static Future<String?> getLanguage() async {
    final db = await instance;
    final result = await db.query('settings', limit: 1);
    return result.isEmpty ? null : result.first['language_code'] as String;
  }

  static Future<void> saveLanguage(String code) async {
    final db = await instance;
    await db.delete('settings');
    await db.insert('settings', {'language_code': code});
  }
}
