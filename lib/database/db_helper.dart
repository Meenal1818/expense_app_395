import 'dart:io';

import 'package:expense_app/app_constants.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import '../models/expense_model.dart';
import '../models/user_model.dart';

class DBHelper {
  DBHelper._();

  static DBHelper getInstance() => DBHelper._();
  Database? db;

  ///user
  static const String TABLE_USER = 'user';

  ///uid(int, pk, auto)
  static const String COLUMN_USER_ID = 'u_id';

  ///name(text)
  static const String COLUMN_USER_NAME = 'u_name';

  ///email(text)
  static const String COLUMN_USER_EMAIL = 'u_email';

  ///pass(text)
  static const String COLUMN_USER_PASS = 'u_pass';

  ///mobNo(text)
  static const String COLUMN_USER_MOB_NO = 'u_mob_no';

  ///gender(text)
  static const String COLUMN_USER_GENDER = 'u_gender';

  ///createdAt(text)
  static const String COLUMN_USER_CREATED_AT = 'u_created_at';

  ///expense
  static const String TABLE_EXPENSE = 'expense';

  ///eid(int, pk, auto)
  static const String COLUMN_EXPENSE_ID = 'e_id';

  ///uid(int)
  /// Already Created In USER_TABLE
  ///title(text)
  static const String COLUMN_EXPENSE_TITLE = 'e_title';

  ///description(text)
  static const String COLUMN_EXPENSE_DESC = 'e_desc';

  ///amount(real)
  static const String COLUMN_EXPENSE_AMOUNT = 'e_amount';

  ///balance(real)
  static const String COLUMN_EXPENSE_BALANCE = 'e_balance';

  ///createdAt(text)
  static const String COLUMN_EXPENSE_CREATED_AT = 'e_created_at';

  ///categoryId(int)
  static const String COLUMN_EXPENSE_CATEGORY_ID = 'e_category_id';

  ///expenseType(int) 1-> debit, 2-> credit
  static const String COLUMN_EXPENSE_TYPE = 'e_type';

  ///events

  Future<Database> initDB() async {
    db ??= await openDB();
    return db!;
  }

  Future<Database> openDB() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String dbPath = join(dir.path, "expenseDB.db");
    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          "create table $TABLE_USER($COLUMN_USER_ID integer primary key autoincrement,$COLUMN_USER_NAME text,$COLUMN_USER_EMAIL text,$COLUMN_USER_GENDER text,$COLUMN_USER_MOB_NO text,$COLUMN_USER_PASS text,$COLUMN_USER_CREATED_AT text)",
        );

        db.execute(
          "create table $TABLE_EXPENSE($COLUMN_EXPENSE_ID integer primary key autoincrement ,$COLUMN_EXPENSE_TITLE text,$COLUMN_EXPENSE_DESC text,$COLUMN_EXPENSE_AMOUNT real,$COLUMN_EXPENSE_BALANCE real,$COLUMN_EXPENSE_CREATED_AT text,$COLUMN_EXPENSE_CATEGORY_ID integer,$COLUMN_EXPENSE_TYPE integer)",
        );
      },
    );
  }

  ///auth
  Future<int> loginUser({required String email, required String pass}) async {
    var db = await initDB();

    List<Map<String, dynamic>> allUsers = await db.query(
      TABLE_USER,
      where: "$COLUMN_USER_EMAIL = ?",
      whereArgs: [email],
    );

    if(allUsers.isNotEmpty){

      List<Map<String, dynamic>> allData = await db.query(
        TABLE_USER,
        where: "$COLUMN_USER_EMAIL = ? AND $COLUMN_USER_PASS = ?",
        whereArgs: [email, pass],
      );

      if(allData.isNotEmpty){
        SharedPreferences prefs =await SharedPreferences.getInstance();
        prefs.setString(AppConstants.prefUserIdKey, allData[0][COLUMN_USER_ID].toString());
        return 1; // user authenticated
      } else {
        return 3; // incorrect password
      }

    } else {
      return 2; // email is invalid
    }
  }

  Future<bool> registerUser({required UserModel user}) async {
    var db = await initDB();

    int rowsEffected = await db.insert(TABLE_USER, user.toMap());

    return rowsEffected > 0;
  }

  Future<bool> ifEmailExists(String email) async {
    var db = await initDB();

    List<Map<String, dynamic>> allData = await db.query(
      TABLE_USER,
      where: "$COLUMN_USER_EMAIL = ?",
      whereArgs: [email],
    );

    return allData.isNotEmpty;
  }

  ///expense
  Future<bool> addExpense({required ExpenseModel expense}) async {
    final db = await initDB();
    int rowsEffected = await db.insert(TABLE_EXPENSE, expense.toMap());
    return rowsEffected > 0;
  }

  void fetchAllExpenses() {}

  Future<bool> updateExpense({
    required ExpenseModel expense,
    required int expenseId,
  }) async {
    final db = await initDB();
    int rowsEffected = await db.update(
      TABLE_EXPENSE,
      expense.toMap(),
      where: "$COLUMN_EXPENSE_ID=?",
      whereArgs: ["$expenseId"],
    );
    return rowsEffected > 0;
  }

  Future<bool> deleteExpense({required int expenseId}) async {
    final db = await initDB();
    int rowsEffected = await db.delete(
      TABLE_EXPENSE,
      where: "$COLUMN_EXPENSE_ID=?",
      whereArgs: ["$expenseId"],
    );
    return rowsEffected > 0;
  }
}
