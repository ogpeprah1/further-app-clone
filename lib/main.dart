// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:further_app_clone/screens/DiscoverScreen.dart';
import 'package:further_app_clone/screens/HomeScreen.dart';
import 'package:further_app_clone/screens/SearchScreen.dart';
import 'package:further_app_clone/screens/welcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors
            .orange, // Set accent color to orange (floating action button, etc.)
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 25, 25, 25), // Set background color to black
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white), // Set text color to white
          // Add more text styles as needed
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
      ),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
