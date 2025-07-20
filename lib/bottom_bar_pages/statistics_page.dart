import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              SizedBox(height: 60),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Statistics',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        
        
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
        
              SizedBox(height: 25),
        
              Container(
                padding: EdgeInsets.only(top: 10, left: 20,right: 20,bottom: 10),
                height: 130,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Expense total',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white30,
                          child: IconButton(onPressed: (){}, 
                              icon: Icon(Icons.drag_handle,color: Colors.white,)),
                        ),
        
                      ],
                    ),
        
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '\$3,734',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '  \/\$4,000 per month',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
        
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 5,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                        ),
                        Container(
                          height: 5,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
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
        
              SizedBox(height: 30),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expense Breakdown',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Limit \$900\/week',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
        
                    ],
                  ),
        
                  Container(
                    height: 35,
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Week',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
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

              SizedBox(height: 40),
              Center(
                child: Text(
                  'Graph',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 40),
        
              Text(
                'Spending Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Your expenses are divided into 6 categories',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
        
              SizedBox(height: 20),
        
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 7,
                        width: 100,
                        color: Colors.purple,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '40%',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
        
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 7,
                        width: 80,
                        color: Colors.pinkAccent,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '25%',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
        
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 7,
                        width: 65,
                        color: Colors.yellow,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '15%',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
        
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 7,
                        width: 45,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '10%',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
        
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 7,
                        width: 30,
                        color: Colors.greenAccent,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '5%',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
        
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 7,
                        width: 25,
                        color: Colors.red,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '5%',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
        
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 500,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,
                              width: 170,
                              child: Column(
                                children: [
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
                                      '\-\$1190',
                                      style: TextStyle(
                                        color:  Colors.pinkAccent.shade100,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
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
                            Container(
                              height: 80,
                              width: 170,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Container(
                                      height: 50,
                                      width: 50,
                                      child: Icon(
                                        CupertinoIcons.car_detailed,
                                        color: CupertinoColors.systemBlue,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey.shade100,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    title: Text(
                                      'Transport',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis
                                      ),
                                    ),
                                    subtitle: Text(
                                      '\-\$867',
                                      style: TextStyle(
                                        color:  Colors.pinkAccent.shade100,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
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
                          ],
                        ),
                        SizedBox(height: 15,)
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
