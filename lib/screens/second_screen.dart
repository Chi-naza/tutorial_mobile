import 'package:flutter/material.dart';
import 'package:new_app/screens/home_screen.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({super.key});

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  int currentNavValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myNavScreens[currentNavValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentNavValue,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: "Group",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.family_restroom),
            label: "Room",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (value) {
          setState(() {
            currentNavValue = value;
          });
          print("Value: $currentNavValue");
        },
      ),
    );
  }

  final List<Widget> _myNavScreens = [
    HomeScreen(),
    Scaffold(
      body: Center(
        child: Text("Products Screen"),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("Group Screen"),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("Room Screen"),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("Profile Screen"),
      ),
    ),
  ];
}
