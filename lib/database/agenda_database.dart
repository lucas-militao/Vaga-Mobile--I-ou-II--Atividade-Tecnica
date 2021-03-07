import 'package:agenda/model/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) 
      return _database;

    _database = await initDB();
    return _database;
  }

  initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'agenda_database.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE contacts (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            telephone TEXT
          )
        ''');
      },
      version: 1
    );
  }

  newContact(Contact newContact) async {
    final db = await database;

    var res = await db.rawInsert('''
      INSERT INTO contacts (
        name, telephone
      ) VALUES (?, ?)
    ''', [newContact.name, newContact.telephone]);

    return res;
  }

  Future<List<Contact>> fetchContacts() async {
    final db = await database;
    final maps = await db.query("contacts");

    return List.generate(maps.length, (i) {
      return Contact(
        maps[i]['id'],
        maps[i]['name'],
        maps[i]['telephone']
      );
    });
  }

  Future<dynamic> getContact() async {
    final db = await database;
    var res = await db.query("contacts");
    if(res.length == 0) {
      return null;
    } else {
      var resMap = res[0];
      return resMap.isNotEmpty ? resMap : Null;
    }
  }
}