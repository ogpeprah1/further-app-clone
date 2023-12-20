import 'package:flutter/material.dart';
import 'package:further_app_clone/screens/DiscoverScreen.dart';
import 'package:further_app_clone/screens/HomeScreen.dart';
import 'package:further_app_clone/screens/SearchScreen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      fixedColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(Icons.home)),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiscoverScreen()));
              },
              icon: Icon(Icons.explore)),
          label: "Discover",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
            icon: Icon(Icons.zoom_in),
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_library),
          label: "Library",
        )
      ],
    );
  }
}
