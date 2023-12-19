// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:further_app_clone/screens/HomeScreen.dart';

class OnboardingScreen extends StatelessWidget {
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
                  'Personalize your feed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle Get Started button tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.sizeOf(context).width - 20, 50),
                    backgroundColor:
                        Color(0xFFDE7604), // Set button color to orange
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
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
