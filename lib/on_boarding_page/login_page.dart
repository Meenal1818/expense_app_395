import 'package:expense_app/bottom_bar.dart';
import 'package:expense_app/on_boarding_page/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120),

            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 35,
                color: Color(0XFF6D7ED2),
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Stay signed in with your account \n      to make searching easier.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),

            SizedBox(height: 30),
            Container(
              width: 350,
              height: 80,
              child: TextField(
                keyboardType: TextInputType.text,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'user_name',
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 15),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.profile_circled,
                    size: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),

            Container(
              width: 350,
              height: 80,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 15),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.eye_slash,
                    size: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => BottomBar(),
                    ),
                  );
                  print('login');
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Color(0XFF6D7ED2),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 1, width: 130, color: Colors.grey),
                Text(
                  'OR',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
                ),
                Container(height: 1, width: 130, color: Colors.grey),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/app_image/icons8-gmail-48 (1).png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  'Log in with Gmail',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),

            SizedBox(height: 60),

            Text(
              'Forget Password?',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),

            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ", // default text
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'Sign UP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
