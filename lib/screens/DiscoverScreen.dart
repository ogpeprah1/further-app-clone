// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:further_app_clone/components/bottomNav.dart';

import '../components/TopicCard.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            Text(
              'Discover',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      // History Logo
                      Container(
                        width: 60.0,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                      Text(
                        ' History ',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      // History Logo
                      Container(
                        width: 60.0,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                      Text(
                        ' Bookmark ',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            // Special Picks for You
            Text(
              'Special Picks for You',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),

            // Scrollable Topics
            SizedBox(
              height: 200.0, // Adjust the height as needed
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Topic 1
                    TopicCard(
                      imagePath: 'assets/topic1.jpg',
                      title: 'Topic 1',
                    ),
                    SizedBox(width: 16.0),
                    // Topic 2
                    TopicCard(
                      imagePath: 'assets/topic2.jpg',
                      title: 'Topic 2',
                    ),
                    // Add more TopicCard widgets as needed
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  child: Text(
                    'Natural Language Processing',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ))
              ],
            ),
            SizedBox(height: 16.0),

            // Scrollable Topics
            SizedBox(
              height: 200.0, // Adjust the height as needed
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Topic 1
                    TopicCard(
                      imagePath: 'assets/topic1.jpg',
                      title: 'Topic 1',
                    ),
                    SizedBox(width: 16.0),
                    // Topic 2
                    TopicCard(
                      imagePath: 'assets/topic2.jpg',
                      title: 'Topic 2',
                    ),
                    // Add more TopicCard widgets as needed
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
