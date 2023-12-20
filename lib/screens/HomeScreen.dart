// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:further_app_clone/components/DismissibleTopic.dart';
import 'package:further_app_clone/components/TopicComponent.dart';
import 'package:further_app_clone/components/bottomNav.dart';
import 'package:further_app_clone/screens/SignUp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Topic> topicsList = [
    Topic(
      index: 0,
      image: 'topicsBackground.jpg',
      description: 'Topic Description 1',
      descText:
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse quam inventore voluptate facere quasi voluptas earum, minus unde eum culpa?',
      duration: '9',
      headerText: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.',
      institutionLogo: 'article logo.png',
      institutionName: 'NY Times',
    ),

    Topic(
      index: 1,
      image: 'topicsBackground.jpg',
      description: 'Topic Description 1',
      descText:
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse quam inventore voluptate facere quasi voluptas earum, minus unde eum culpa?',
      duration: '9',
      headerText: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.',
      institutionLogo: 'article logo.png',
      institutionName: 'NY Times',
    ),
    Topic(
      index: 1,
      image: 'topicsBackground.jpg',
      description: 'Topic Description 1',
      descText:
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse quam inventore voluptate facere quasi voluptas earum, minus unde eum culpa?',
      duration: '9',
      headerText: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.',
      institutionLogo: 'article logo.png',
      institutionName: 'NY Times',
    ),
    // Add more topics as needed
  ];

  int currentIndex = 0;
  bool isUserSignedUp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'These contents are,',
                  style: TextStyle(fontSize: 18.0),
                ),
                Row(
                  children: [
                    Text(
                      'Coming to the roads end',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.directions_car,
                      size: 24.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: !isUserSignedUp,
            replacement: Container(),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20.0),
              color: Colors.green,
              child: Column(
                children: [
                  Text(
                    'Please sign up to receive daily feed via email.',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ), // This is what will be shown when isUserSignedUp is true
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: topicsList.map((topic) {
                  return DismissibleTopic(
                    topic: topic,
                    onTopicDismissed: () {
                      setState(() {
                        // Remove the dismissed topic from the topics list
                        topicsList.remove(topic);
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
