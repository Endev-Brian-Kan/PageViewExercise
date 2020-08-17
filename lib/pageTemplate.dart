import 'package:flutter/material.dart';
import './questionTitle.dart';
import './questions.dart';

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
        Container(
          width: double.infinity,
          height: 530,
          // color: Colors.teal[200],
          decoration: BoxDecoration(
            color: Colors.teal[200],
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20.0),
              topRight: const Radius.circular(20.0),
            ),
          ),
          child: Questiontitleindex(pageTemplateChange),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          height: 430,
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20.0),
              topRight: const Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50, width: double.infinity),

              Questionindex(pageTemplateChange),
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
