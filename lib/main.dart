import 'package:expense_app/bloc/expense_bloc_package/expense_bloc.dart';
import 'package:expense_app/bloc/user_bloc_package/user_bloc.dart';
import 'package:expense_app/database/db_helper.dart';
import 'package:expense_app/database/repo/expense_repo.dart';
import 'package:expense_app/database/repo/user_repo.dart';
import 'package:expense_app/on_boarding_page/splash_screen.dart';
import 'package:expense_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(create: (context) => UserBloc(userRepo: UserRepository(dbHelper: DBHelper.getInstance())),),
      BlocProvider(create: (context) => ExpenseBloc(expenseRepository: ExpenseRepository(dbHelper: DBHelper.getInstance())),)
    ],
        child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
        initialRoute: AppRoutes.splash,
        routes: AppRoutes.getRoutes(),

      home: SplashPage()
    );
  }
}


