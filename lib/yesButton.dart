import 'package:flutter/material.dart';

class Yesbutton extends StatelessWidget {
  final PageController controller;
  int pageChange;

  Yesbutton(this.controller, this.pageChange);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 150,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.teal[200],
        onPressed: () {
          // pageController.animateToPage(++pageChanged,
          controller.animateToPage(++pageChange,
              duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
        },
        child: Text(
          'Yes',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
