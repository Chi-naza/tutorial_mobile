import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> placesInNsukka = [
    "Hilltop",
    "Behind Flat",
    "Nkpor",
    "Town Hall Village",
    "Ovoko",
  ];

  String currentPickedValue = "Hilltop";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  print("Chinaza");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  // fixedSize: Size(170, 60),
                ),
                child: Text("Sign Up Now For Free"),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  print("Chinaza");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  // fixedSize: Size(170, 60),
                ),
                label: Text("Go To Home"),
                icon: Icon(Icons.home_outlined),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  print("Chinaza");
                },
                child: Container(
                  width: 120,
                  height: 40,
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              OutlinedButton(
                onPressed: () {
                  print("Chinaza");
                },
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                    side: BorderSide(color: Colors.red)),
                child: Text("Book Now"),
              ),
              SizedBox(height: 20),
              IconButton(
                onPressed: () {},
                iconSize: 100,
                color: Colors.green,
                icon: Icon(
                  Icons.person_3_outlined,
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text("Forgot Password"),
              ),
              SizedBox(height: 20),
              DropdownButton(
                value: currentPickedValue,
                items: placesInNsukka
                    .map((place) => DropdownMenuItem(
                          value: place,
                          child: Text(place),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    currentPickedValue = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              PopupMenuButton(
                // icon: Icon(Icons.more_horiz),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text("Checkout"),
                    ),
                    PopupMenuItem(
                      child: Text("Pay Later"),
                    ),
                  ];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
