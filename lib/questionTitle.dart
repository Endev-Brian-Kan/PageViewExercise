import 'package:flutter/material.dart';

class Questiontitleindex extends StatelessWidget {
  // Store the integer
  int pageNumber;

  // Get the integer
  Questiontitleindex(this.pageNumber);

  // Build the array
  final questionTitleArray = [
    "Please Answer Question 1",
    "Please Answer Question 2",
    "Please Answer Question 3",
  ];

  // Get the corresponding array value
  // String matchingQuestionTitle = questionTitleArray[pageNumber];
  // print(questionTitleArray[2]);

  String matchingQuestionTitle;

  void _findQuestionTitle() {
    // setState(() {
    matchingQuestionTitle = questionTitleArray[pageNumber];
    // });
    print("Test $matchingQuestionTitle");
  }

  // Send the correct array value to pageTemplate
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        questionTitleArray[pageNumber],
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
    );
  }
}
