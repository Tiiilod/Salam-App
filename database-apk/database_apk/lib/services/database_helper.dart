import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('app_sholat.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    // Tabel untuk Doa
    await db.execute('''
      CREATE TABLE doa (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        judul TEXT NOT NULL,
        isi TEXT NOT NULL
      )
    ''');
    
    // Masukkan data awal (seed data)
    await db.insert('doa', {'judul': 'Doa Sebelum Tidur', 'isi': 'Bismika Allahumma...'});
    await db.insert('doa', {'judul': 'Doa Bangun Tidur', 'isi': 'Alhamdulillahilladzi...'});
  }

  Future<List<Map<String, dynamic>>> readAllDoa() async {
    final db = await instance.database;
    return await db.query('doa');
  }
}