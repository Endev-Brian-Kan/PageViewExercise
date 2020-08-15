import 'package:flutter/material.dart';

class Questionindex extends StatelessWidget {
  // Store the integer
  int pageNumber;

  // Get the integer
  Questionindex(this.pageNumber);

  // Build the array
  final questionsArray = [
    "This is Question 1",
    "Question 2",
    "Question 3",
  ];

  // Get the corresponding array value
  // String matchingQuestion = questionsArray[pageNumber];
  // print(questionsArray[2]);

  String matchingQuestion;

  void _findQuestion() {
    // setState(() {
    matchingQuestion = questionsArray[pageNumber];
    // });
    print("Test $matchingQuestion");
  }

  // Send the correct array value to pageTemplate
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionsArray[pageNumber],
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
