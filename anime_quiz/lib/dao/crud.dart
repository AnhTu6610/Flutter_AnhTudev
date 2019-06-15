import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:anime_quiz/entitys/question.dart';
import 'package:anime_quiz/entitys/user.dart';

class Crud {
  Database database ;
  Crud(){
    this.database = database;
    //openDB();
  }
  Future openDB() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'quiz.db');
    int  kt = 0;
    database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('CREATE TABLE QuestionTable (id INTEGER PRIMARY KEY, dapan TEXT, linkimage TEXT, status INTEGER)');
        await db.execute('CREATE TABLE User(id INTEGER PRIMARY KEY, tenuser TEXT, coin INTEGER)');
        kt = 1;
      },
      
    );
    if (kt==1) {
      await insert();
    }
    //await getAllQuestion();
  }
  Future insert() async {
    String user = 'INSERT INTO User(tenuser, coin) VALUES("Pro", 0)';

    String ct1 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("ZORO", "1.png", 0)';
    String ct2 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("NAMI", "2.png", 0)';
    String ct3 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("USOPP", "3.png", 0)';
    String ct4 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("SANJI", "4.png", 0)';
    String ct5 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("CHOPPER", "5.png", 0)';
    String ct6 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("NICOROBIN", "6.png", 0)';
    String ct7 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("FRANKY", "7.png", 0)';
    String ct8 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("BROOK", "8.png", 0)';
    String ct9 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("BARTOCLUB", "9.png", 0)';
    String ct10 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("LUFFY", "10.png", 0)';
    String ct11 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "11.png", 0)';
    String ct12 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "12.png", 0)';
    String ct13 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "13.png", 0)';
    String ct14 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "14.png", 0)';
    String ct15 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "15.png", 0)';
    String ct16 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "16.png", 0)';
    String ct17 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "17.png", 0)';
    String ct18 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "18.png", 0)';
    String ct19 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "19.png", 0)';
    String ct20 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "20.png", 0)';
    String ct21 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "21.png", 0)';
    String ct22 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "22.png", 0)';
    String ct23 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "23.png", 0)';
    String ct24 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "24.png", 0)';
    String ct25 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "25.png", 0)';
    String ct26 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "26.png", 0)';
    String ct27 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "27.png", 0)';
    String ct28 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "28.png", 0)';
    String ct29 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "29.png", 0)';
    String ct30 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "30.png", 0)';
    String ct31 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "31.png", 0)';
    String ct32 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "32.png", 0)';
    String ct33 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "33.png", 0)';
    String ct34 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "34.png", 0)';
    String ct35 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "35.png", 0)';
    String ct36 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "36.png", 0)';
    String ct37 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "37.png", 0)';
    String ct38 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "38.png", 0)';
    String ct39 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "39.png", 0)';
    String ct40 = 'INSERT INTO QuestionTable(dapan, linkimage, status) VALUES("", "40.png", 0)';


    await database.transaction((txn) async {
      await txn.rawInsert(user,[]);

      await txn.rawInsert(ct1,[]);
      await txn.rawInsert(ct2,[]);
      await txn.rawInsert(ct3,[]);
      await txn.rawInsert(ct4,[]);
      await txn.rawInsert(ct5,[]);
      await txn.rawInsert(ct6,[]);
      await txn.rawInsert(ct7,[]);
      await txn.rawInsert(ct8,[]);
      await txn.rawInsert(ct9,[]);
      await txn.rawInsert(ct10,[]);
      // await txn.rawInsert(ct11,[]);
      // await txn.rawInsert(ct12,[]);
      // await txn.rawInsert(ct13,[]);
      // await txn.rawInsert(ct14,[]);
      // await txn.rawInsert(ct15,[]);
      // await txn.rawInsert(ct16,[]);
      // await txn.rawInsert(ct17,[]);
      // await txn.rawInsert(ct18,[]);
      // await txn.rawInsert(ct19,[]);
      // await txn.rawInsert(ct20,[]);
    });
  }
  Future<List<Question>> getAllQuestion() async {
    List<Map> list = await database.query('QuestionTable',columns: [kid, kdapan, klinkimage, kstatus]);
    return list.map((f) => Question.fromMap(f)).toList();
  }
  Future<List<User>> getAllUser() async {
    List<Map> list = await database.query('User',columns: [zid, ztenuser, zcoin]);
    return list.map((f) => User.fromMap(f)).toList();
  }
  Future<void> update(Question question) async {
    await database.update('QuestionTable', question.toMap(), where: 'id = ?', whereArgs: [question.id]);
  }
  Future<void> updateUser(User user) async {
    await database.update('User', user.toMap(), where: 'id = ?', whereArgs: [user.id]);
  }
  Future close() async => database.close();
}
