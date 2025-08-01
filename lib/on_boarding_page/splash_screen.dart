

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_constants.dart';
import '../utils/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration (seconds: 3), ()async{
      String nextPageName = AppRoutes.login;

      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userId = prefs.getString(AppConstants.prefUserIdKey) ?? "";

      if(userId.isNotEmpty){
        nextPageName = AppRoutes.bottomBar;
      }


      Navigator.pushReplacementNamed(context, nextPageName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/app_image/logo.png"),
                SizedBox(width: 15,),
                Text('Monety',style: TextStyle(
                    color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}