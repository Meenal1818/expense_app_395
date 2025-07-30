
import 'package:expense_app/ui/bottom_bar_pages/home_page.dart';
import 'package:expense_app/ui/bottom_bar_pages/statistics_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    StatisticsPage(),
    Center(child: Text('Add Page')),
    Center(child: Text('Notification Page')),
    Center(child: Text('Idea Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.envelope_open),
            label: ''
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 55,
              width: 55,
              child: Icon(Icons.add,color: Colors.white,size: 25,),
              decoration: BoxDecoration(
                  color: Color(0XFFE180B1),
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
              label: ''
          ),

          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
              label: ''
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline_rounded),
              label: ''
          ),
        ],
      ),
    );
  }
}
