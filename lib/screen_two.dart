import 'package:concept/home_page.dart';
import 'package:concept/map_page.dart';
import 'package:concept/user_page.dart';
import 'package:flutter/material.dart';




class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _currentIndex = 0;

  final List _children = [
    const HomePage(),
    const MapPage(),
    const UserPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
          currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title:Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Map'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('User')
          )
        ],
      ),

    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

