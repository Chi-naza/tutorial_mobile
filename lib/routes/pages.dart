import 'package:flutter/material.dart';
import 'package:new_app/routes/names.dart';
import 'package:new_app/screens/drawer_screen.dart';
import 'package:new_app/screens/home_screen.dart';
import 'package:new_app/screens/intro_screen.dart';

Map<String, WidgetBuilder> routePages = {
  AppRoutes.introScreen: (BuildContext context) => IntroScreen(),
  AppRoutes.homeScreen: (BuildContext context) => HomeScreen(),
  AppRoutes.profileScreen: (BuildContext context) => DrawerScreen(),
};

// {"name" : "Chisom", "age" : 12}
