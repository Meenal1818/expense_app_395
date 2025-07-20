import 'package:expense_app/bottom_bar.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25),
        child: Column(
          children: [
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/app_image/logo.png",height: 30,fit: BoxFit.contain,),
                SizedBox(width: 5,),
                Text('Monety',style: TextStyle(
                    color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold
                ),)
              ],
            ),
            SizedBox(height: 45,),
            Image.asset("assets/app_image/introImage.png",height: 370,width: 370,),

            SizedBox(height: 30,),
            Text('Easy way to monitor\nyour expense',style: TextStyle(
                color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,),

            SizedBox(height: 20,),
            Text('Safe your future by managing your\nexpense right now',style: TextStyle(
                color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w400
            ),
              textAlign: TextAlign.center,),

            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    SizedBox(width: 3,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    SizedBox(width: 3,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Color(0XFFE5BF90),
                    ),
                  ],
                ),

                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => BottomBar(),));
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),
                    decoration: BoxDecoration(
                      color: Color(0XFFE180B1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
