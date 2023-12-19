// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final String imagePath;
  final String title;

  TopicCard({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        // Image
        Container(
          width: MediaQuery.sizeOf(context).width * 0.7,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
        ),
        // Blurred Container
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(10),
          height: 70.0,
          width: MediaQuery.sizeOf(context).width * 0.7,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        // Title
      ],
    );
  }
}
