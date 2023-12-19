// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:further_app_clone/components/Gradients.dart';
import 'package:further_app_clone/components/TopicComponent.dart';

class DismissibleTopic extends StatelessWidget {
  final Topic topic;
  final VoidCallback onTopicDismissed;

  DismissibleTopic({required this.topic, required this.onTopicDismissed});

  @override
  Widget build(BuildContext context) {
    List<Color> selectedGradient =
        gradientColors[Random().nextInt(gradientColors.length)];
    bool isViewed = false;

    return Dismissible(
      key: ValueKey(topic),
      background: Container(
        child: Icon(Icons.bookmark, color: Colors.white, size: 100.0),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20.0),
      ),
      secondaryBackground: Container(
        child: Icon(Icons.not_interested, color: Colors.red, size: 100.0),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20.0),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          print("Topic with index ${topic.index} is taken");
          // User swiped right (accept action)
          // Handle accept action logic here
        } else if (direction == DismissDirection.endToStart) {
          print("Topic with index ${topic.index} is denied");
          // User swiped left (decline action)
          // Handle decline action logic here
        }
        onTopicDismissed();
      },
      child: Container(
        height: 450.0,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Stack(
            children: [
              Image.asset(
                "assets/${topic.image}",
                height: 450.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                        colors: selectedGradient),
                  ),
                  // Content inside the gradient overlay
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Row with Institution Logo, Name, Dot, Clock Icon, and Time
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/${topic.institutionLogo}",
                                    height: 24.0,
                                    width: 24.0,
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    topic.institutionName,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    '·',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(width: 10.0),
                                  Icon(
                                    Icons.access_time,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 4.0),
                                  Text(
                                    "${topic.duration} m",
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            if (!isViewed)
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Viewed",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.crop_free_rounded)
                                    ],
                                  ))
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // Heading Text
                        Text(
                          topic.headerText,
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        // Description Text
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          topic.descText,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        // Three Dotted Menu Icon
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.more_horiz, size: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
