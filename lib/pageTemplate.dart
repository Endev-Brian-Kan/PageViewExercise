import 'package:flutter/material.dart';

import './noButton.dart';
import './yesButton.dart';

// Nobutton(this.controller, this.pageChange);
//   Yesbutton(this.controller, this.pageChange);

class Pagetemplate extends StatelessWidget {
  final PageController pageTemplateController;
  int pageTemplateChange;

  Pagetemplate(this.pageTemplateController, this.pageTemplateChange);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        SizedBox(height: 50),
        Container(
          width: double.infinity,
          height: 480,
          // color: Colors.teal[200],
          decoration: BoxDecoration(
            color: Colors.teal[200],
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20.0),
              topRight: const Radius.circular(20.0),
            ),
          ),

          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Please answer the following question 1.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          height: 400,
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20.0),
              topRight: const Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              // SizedBox(height: 50),
              Text(
                "Have you ever had a biopsy regarding this area before?",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              // SizedBox for space
              SizedBox(height: 50),
              Yesbutton(pageTemplateController, pageTemplateChange),
              Nobutton(pageTemplateController, pageTemplateChange),
            ],
          ),
        ),
      ],
    );
  }
}
