import 'package:flutter/material.dart';
import 'package:new_app/data/repository/home_repo.dart';
import 'package:new_app/model/cat_facts_model.dart';
import 'package:new_app/routes/names.dart';
import 'package:new_app/screens/cats_screen.dart';
import 'package:new_app/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Screen"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, AppRoutes.homeScreen);

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (_) => HomeScreen(),
                //     ));

                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          HomeScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(seconds: 3),
                    ));
              },
              child: Text("Go To Home"),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CatsScreen(
                        catData: CatFactsModel(),
                      ),
                    ));
              },
              child: Text("Got Cats Screen"),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () async {
                CatFactsModel? catData = await HomeRepo.fetchMyCatFacts();

                if (catData != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CatsScreen(catData: catData),
                      ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Container(
                      height: 40,
                      child: Text(
                        "Cats Data Did Not Return.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ));
                }
              },
              child: Text(
                "Fetch Cat Facts",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
