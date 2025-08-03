import 'package:expense_app/models/expense_model.dart';

import '../../models/filtered_expense_model.dart';

abstract class ExpenseState{}

class ExpenseInitialState extends ExpenseState{}

class ExpenseLoadingState extends ExpenseState{}

class ExpenseLoadedState extends ExpenseState{
  List<FilteredExpenseModel> allExp;
  ExpenseLoadedState({required this.allExp});
}

class ExpenseFailureState extends ExpenseState{
  String errorMsg;
  ExpenseFailureState({required this . errorMsg});
}