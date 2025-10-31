import 'package:flutter/material.dart';
import 'package:new_app/model/cat_facts_model.dart';

class CatsScreen extends StatelessWidget {
  final CatFactsModel catData;
  const CatsScreen({super.key, required this.catData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cats Screen"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Image.network(catData.image ?? ""),
            ),
            SizedBox(height: 40),

            // Name
            Text(
              "Name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Text(
              catData.name ?? "Anonymous",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            // Species
            Text(
              "Species",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Text(
              catData.specie ?? "No Specie",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            // Url
            Text(
              "Url",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(
              width: 280,
              child: Text(
                catData.url ?? "No Url",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
