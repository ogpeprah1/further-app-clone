// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:further_app_clone/screens/Sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Welcome to Further',
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Google sign-up logic
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 3.0),
              child: Text(
                'Continue with Google',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle Google sign-up logic
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 3.0),
              child: Text(
                'Continue with Facebook',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'OR',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Handle Google sign-up logic
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                'Sign up with E-mail',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'By signing up, you agree to our Privacy Policy.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 18.0,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 233, 129, 54),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(
                      fontSize: 18.0,
                      decoration: TextDecoration.underline,
                      color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
