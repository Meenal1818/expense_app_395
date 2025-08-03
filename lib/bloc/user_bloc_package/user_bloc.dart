import 'package:bloc/bloc.dart';
import 'package:expense_app/bloc/user_bloc_package/user_event.dart';
import 'package:expense_app/bloc/user_bloc_package/user_state.dart';
import 'package:expense_app/database/repo/user_repo.dart';

class UserBloc extends Bloc<UserEvent,UserState>{
  UserRepository userRepo;
  UserBloc({required this.userRepo}): super(UserInitialState()){
    on<RegisterUserEvent>((event,emit)async{
      emit(UserLoadingState());

      int value= await userRepo.registerUser(user: event.user);

      if(value==1){
        emit(UserSuccessState());
      }else if(value==2){
        emit(UserFailureState(errorMsg: 'Email Already Exist..'));
      }else{
        emit(UserFailureState(errorMsg: 'Something went wrong!!'));
      }
    });

    on<LoginUserEvent>((event,emit)async{
      emit(UserLoadingState());

      int value= await userRepo.authenticateUser(email: event.email, pass: event.password);

      if(value==1){
        emit(UserSuccessState());
      }else if(value==2){
        emit(UserFailureState(errorMsg: 'Email is invalid!!'));
      }else{
        emit(UserFailureState(errorMsg: 'Incorrect Password!!'));
      }
    });

  }
}