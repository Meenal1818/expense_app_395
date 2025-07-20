

import '../models/expense_model.dart';
import '../models/user_model.dart';

class DBHelper{

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
  ///auth
  void loginUser({required String email, required String pass}){}
  void registerUser({required UserModel user}){}
  void ifEmailExists(String email){}
  ///expense
  void addExpense({required ExpenseModel expense}){}
  void fetchAllExpenses(){}
  void updateExpense({required ExpenseModel expense}){}
  void deleteExpense({required int id}){}

}