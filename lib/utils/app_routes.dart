import 'package:expense_app/bottom_bar.dart';
import 'package:expense_app/bottom_bar_pages/home_page.dart';
import 'package:expense_app/bottom_bar_pages/statistics_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';

import '../on_boarding_page/login_page.dart';
import '../on_boarding_page/sign_up_page.dart';
import '../on_boarding_page/splash_screen.dart';

class AppRoutes{

  static const String splash = '/splash';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String bottomBar = '/bottomBar';
  static const String statistics = '/statistics';



  static Map<String, WidgetBuilder> getRoutes() => {
    splash: (context) => SplashPage(),
    login: (context) => LoginPage(),
    register: (context) => SignUpPage(),
    bottomBar:(context)=> BottomBar(),
    home:(context) => HomePage(),
    statistics:(context) => StatisticsPage()
  };

}