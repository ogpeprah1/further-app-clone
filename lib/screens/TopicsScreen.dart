import 'package:flutter/material.dart';
import 'package:further_app_clone/components/TopicsComponent.dart';
import 'package:further_app_clone/screens/HomeScreen.dart';

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({Key? key}) : super(key: key);

  @override
  _TopicsScreenState createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  List<String> topics = [
    "3D & Animation",
    "Accounting & Bookkeeping",
    "Blockchain",
    "Branding",
    "Business Analytics & Intelligence",
    "Business Strategy",
    "Communication",
    "Dance",
    "Data Science",
    "Ecommerce",
    "Economics",
    "Electrical Engineering",
    "Entrepreneurship",
    "Fashion Design",
    "Finance",
    "Fitness",
    "Food & Beverage",
    "Game Design",
    "Game Development",
    "Google"
  ];

  List<String> selectedTopics = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Topics",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Select the topics you are interested in.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 6.0,
                        runSpacing: 10.0,
                        children: topics
                            .asMap()
                            .entries
                            .map((entry) => TopicsComponent(
                                  index: entry.key + 1,
                                  title: entry.value,
                                  onSelect: (selected) {
                                    handleTopicSelection(entry.value, selected);
                                  },
                                ))
                            .toList(),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child: GestureDetector(
              onTap: selectedTopics.length >= 3
                  ? () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }
                  : null,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color:
                      selectedTopics.length >= 3 ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      'Select 3 topics To Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "You can always add more once you're in the app",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void handleTopicSelection(String topic, bool selected) {
    setState(() {
      if (selected) {
        if (!selectedTopics.contains(topic)) {
          selectedTopics.add(topic);
        }
      } else {
        selectedTopics.remove(topic);
      }
    });
  }

  void proceedToApp() {
    // Implement logic to proceed to the app
    print('Proceeding to the app with selected topics: $selectedTopics');
  }
}
