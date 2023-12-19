import 'package:flutter/material.dart';
import 'package:further_app_clone/screens/DiscoverScreen.dart';
import 'package:further_app_clone/screens/HomeScreen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
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
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add),
          label: "Library",
        )
      ],
    );
  }
}
