import 'package:flutter/material.dart';

class Questiontitleindex extends StatelessWidget {
  // Store the integer
  int pageNumber;

  // Get the integer
  Questiontitleindex(this.pageNumber);

  // Build the array
  final questionTitleArray = [
    "This is Question 1",
    "Question 2",
    "Question 3",
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
      child: Text(
        questionTitleArray[pageNumber],
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
