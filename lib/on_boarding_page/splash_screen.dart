import 'dart:async';

import 'package:expense_app/on_boarding_page/sign_up_page.dart';
import 'package:flutter/material.dart';

import '../intro_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration (seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
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
