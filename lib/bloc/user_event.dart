import 'package:expense_app/models/user_model.dart';

abstract class UserEvent{}

class LoginUserEvent extends UserEvent{
  String email,password;
  LoginUserEvent({required this.email,required this.password});
}

class RegisterUserEvent extends UserEvent{
  UserModel user;
  RegisterUserEvent({required this.user});
}