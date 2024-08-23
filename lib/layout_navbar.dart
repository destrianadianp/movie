import 'package:flutter/material.dart';
import 'package:magang_2/home_page.dart';

class LayoutNavigationBar extends StatefulWidget {
  const LayoutNavigationBar({super.key});

  @override
  State<LayoutNavigationBar> createState() => _LayoutNavigationBarState();
}

class _LayoutNavigationBarState extends State<LayoutNavigationBar> {

  int _currentIndex =0;
  final List<Widget> _children =[
    HomePage()
  ];

  void onBarTapped(int index) {
    _currentIndex=index;
  setState(() {
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onBarTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home, color: Colors.red,),
              label: 'Home', 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              activeIcon: Icon(Icons.list, color: Colors.red,),
              label: 'Favorite',
            ),
        ]),
    );
  }
}