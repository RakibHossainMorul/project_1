// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:project_1/pages/account.dart';
import 'package:project_1/pages/add_screen.dart';
import 'package:project_1/pages/chat.dart';
import 'package:project_1/pages/home_screen.dart';
import 'package:project_1/pages/my_adds_screen.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    HomeScreen(),
    MyAddsScreen(),
    AddScreen(),
    ChatScreen(),
    AccountScreen(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "My Adds",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
