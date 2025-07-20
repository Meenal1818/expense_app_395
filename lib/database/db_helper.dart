

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
  ///eid(int, pk, auto)
  ///uid(int)
  ///title(text)
  ///description(text)
  ///amount(real)
  ///balance(real)
  ///createdAt(text)
  ///categoryId(int)
  ///expenseType(int) 1-> debit, 2-> credit


  ///events
  ///auth
  void loginUser({required String email, required String pass}){}
  void registerUser({required UserModel user}){}
  void ifEmailExists(String email){}
  ///expense
  void addExpense(){}
  void fetchAllExpenses(){}
  void updateExpense(){}
  void deleteExpense({required int id}){}

}