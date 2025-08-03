
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../database/repo/expense_repo.dart';
import '../../models/filtered_expense_model.dart';
import 'expense_event.dart';
import 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState>{
  ExpenseRepository expenseRepository;
  ExpenseBloc({required this.expenseRepository}) : super(ExpenseInitialState()){

    on<AddExpenseEvent>((event, emit) async{

      emit(ExpenseLoadingState());

      bool check = await expenseRepository.addExpense(expense: event.newExp);

      if(check){
        List<FilteredExpenseModel> allExp = await expenseRepository.fetchAllExpenses(filterType: event.filterType);
        emit(ExpenseLoadedState(allExp: allExp));
      } else {
        emit(ExpenseFailureState(errorMsg: "Something went wrong"));
      }

    });

    on<FetchAllExpenseEvent>((event, emit) async{
      emit(ExpenseLoadingState());

      List<FilteredExpenseModel> allExp = await expenseRepository.fetchAllExpenses(filterType: event.filterType, expType: event.expType);

      emit(ExpenseLoadedState(allExp: allExp));
    });

  }

}