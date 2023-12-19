import 'package:flutter/material.dart';

class TopicsComponent extends StatefulWidget {
  final int index;
  final String title;
  final ValueChanged<bool> onSelect;

  const TopicsComponent({
    required this.index,
    required this.title,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  _TopicsComponentState createState() => _TopicsComponentState();
}

class _TopicsComponentState extends State<TopicsComponent> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        backgroundColor: isSelected ? Colors.blue : Colors.black,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
          widget.onSelect(isSelected);
        });
      },
      child: Text(
        widget.title,
      ),
    );
  }
}
