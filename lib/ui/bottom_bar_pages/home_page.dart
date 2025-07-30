import 'package:expense_app/ui/settings/logout.dart';
import 'package:expense_app/utils/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Image.asset(
                        "assets/app_image/logo.png",
                        height: 25,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Monety',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 200),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),

                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          "assets/app_image/profileImage.jpeg",
                        ),
                      ),

                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Morning',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Bladsdjfnshbj',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 45),
                      Container(
                        height: 35,
                        width: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'This month',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    height: 170,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expense total',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        SizedBox(height: 5),
                        Text(
                          '\$3,734',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 43,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 50,
                              child: Center(
                                child: Text(
                                  '\+\$240',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0XFFBA591B),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            SizedBox(width: 7),
                            Text(
                              'than last month',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0XFF6D7ED2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  SizedBox(height: 20),
                  Text(
                    'Expense List',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              height: 230,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tuesday,14',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      Text(
                                        '\-\$1380',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10),
                                  Divider(
                                    height: 2,
                                    thickness: 2,
                                    color: Colors.grey.shade300,
                                  ),

                                  SizedBox(height: 10),

                                  ListTile(
                                    leading: Container(
                                      height: 50,
                                      width: 50,
                                      child: Icon(
                                        CupertinoIcons.cart,
                                        color: CupertinoColors.systemBlue,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey.shade100,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    title: Text(
                                      'Shop',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Buy new clothes',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    trailing: Text(
                                      '\-\$90',
                                      style: TextStyle(
                                        color: Colors.pinkAccent.shade100,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  ListTile(
                                    leading: Container(
                                      height: 50,
                                      width: 50,
                                      child: Icon(
                                        CupertinoIcons.device_phone_portrait,
                                        color: CupertinoColors.systemBlue,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey.shade100,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    title: Text(
                                      'Electronics',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Buy new Iphone',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    trailing: Text(
                                      '\-\$1230',
                                      style: TextStyle(
                                        color: Colors.pinkAccent.shade100,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 2,
                                ),
                              ),
                            ),
                            SizedBox(height: 20,)
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -3,
              top: 0,
              bottom: 350,
              child: Image.asset(
                "assets/app_image/homeImage.png",
                height: 150,
                width: 180,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
