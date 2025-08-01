import 'package:expense_app/bloc/user_bloc.dart';
import 'package:expense_app/bloc/user_event.dart';
import 'package:expense_app/bloc/user_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../utils/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = false;
  bool isLoading= false;
  bool _obscureText=true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
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
              SizedBox(
                width: 350,
                height: 80,
                child: TextFormField(
                  validator: (value){
                    RegExp emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                    if(value == null || value.isEmpty){
                      return 'Please enter email here..';
                    } else if(!emailRegex.hasMatch(value)) {
                      return 'Please enter valid email';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black54, fontSize: 15),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey), // same as enabled
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

          SizedBox(
            width: 350,
            height: 80,
            child: TextFormField(
              validator: (value){

                if(value == null || value.isEmpty){
                  return 'Please enter password here..';
                } else {
                  return null;
                }
              },
              style: TextStyle(color: Colors.black, fontSize: 15),
              controller: passwordController,
              obscureText: _obscureText,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black54, fontSize: 15),
                filled: true,
                fillColor: Colors.grey.shade100,

                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey), // same as enabled
                  borderRadius: BorderRadius.circular(10),
                ),

                // Eye Icon to toggle password
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                    size: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),

              SizedBox(height: 10),
              SizedBox(
                width: 350,
                height: 50,
                child: BlocConsumer<UserBloc,UserState>(
                  listenWhen: (ps, cs) {
                    return isLogin;
                  } ,
                  buildWhen: (ps, cs) {
                    return isLogin;
                  },
                  listener: (_,state){
                    if(state is UserLoadingState){
                      isLoading=true;
                    }
                    if(state is UserSuccessState){
                      isLoading=false;
                      Navigator.pushReplacementNamed(context, AppRoutes.bottomBar);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Logged in Successfully!!'),backgroundColor: Colors.green,));
                    }
                    if(state is UserFailureState){
                      isLoading=false;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMsg),backgroundColor: Colors.red,));
                    }
                  },


                  builder: (context,state){
                    return ElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          isLogin = true;
                          context.read<UserBloc>().add(
                            LoginUserEvent(email: emailController.text.trim(),
                                password: passwordController.text.trim()),
                          );
                        }


                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF6D7ED2),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: isLoading ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(color: Colors.white,),
                          SizedBox(width: 10,),
                          Text(
                            'Logging in...',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ) : Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                )
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
                      isLogin=false;
                      Navigator.pushNamed(context, AppRoutes.register);
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
      ),
    );
  }
}
