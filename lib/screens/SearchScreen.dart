// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:further_app_clone/components/TopicCard.dart';
import 'package:further_app_clone/components/bottomNav.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List topicList = [
      "Trending",
      "3D & Animation",
      "Accounting & Bookkeeping",
      "Blockchain",
      "Business & Marketing",
      "Coding & Programming"
    ];

    TextEditingController _searchController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                fillColor: const Color.fromARGB(255, 230, 230, 230),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.grey,
                hintText:
                    'Contents, lists, users, topics', // Use hintText instead of labelText
                hintStyle: TextStyle(
                    color: Colors.grey, fontSize: 20), // Hint text color
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent, // Outline color when focused
                    style: BorderStyle.none,
                  ),
                  borderRadius:
                      BorderRadius.circular(20.0), // Set border radius to 20
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent, // Outline color when focused
                    style: BorderStyle.none,
                  ),
                  borderRadius:
                      BorderRadius.circular(20.0), // Set border radius to 20
                ),
              ),
              style: TextStyle(color: Colors.grey), // Text color
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Follow Topics',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items in each row
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: topicList.length,
                itemBuilder: (context, index) {
                  return TopicCard(
                    imagePath: "",
                    title: topicList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
