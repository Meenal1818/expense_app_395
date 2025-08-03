import 'package:expense_app/models/expense_model.dart';

abstract class ExpenseEvent{}

class AddExpenseEvent extends ExpenseEvent{
  ExpenseModel newExp;
  int filterType;
  AddExpenseEvent({required this.newExp, this.filterType=1});
}

class FetchAllExpenseEvent extends ExpenseEvent{
  int filterType;
  int? expType;
  FetchAllExpenseEvent({this.filterType=1, this.expType});
}