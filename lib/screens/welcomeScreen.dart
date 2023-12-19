// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:further_app_clone/screens/Sign_in_screen.dart';
import 'package:further_app_clone/screens/TopicsScreen.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image with Gradient Overlay
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/welcomeImage.jpg'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.8),
                    Colors.transparent
                  ],
                ),
              ),
            ),
          ),
          // Welcome Text and Get Started Button
          Positioned(
            bottom: 100.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              children: [
                Text(
                  'Welcome to Further',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Go further with content and sources picked exclusively for your interests from all around the internet.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle Get Started button tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TopicsScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.sizeOf(context).width - 20, 50),
                    backgroundColor: Color.fromARGB(
                        255, 233, 129, 54), // Set button color to orange
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle Get Started button tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: BorderSide(
                        color: Color.fromARGB(255, 233, 129, 54), width: 2),
                    fixedSize: Size(MediaQuery.sizeOf(context).width - 20, 50),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Already have an invitation? Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
