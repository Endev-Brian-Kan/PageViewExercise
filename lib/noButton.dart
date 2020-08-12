import 'package:flutter/material.dart';

class Nobutton extends StatelessWidget {
  final PageController controller;
  int pageChange;

  Nobutton(this.controller, this.pageChange);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 150,
      // height: 100,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.teal[200],
        onPressed: () {
          // pageController.animateToPage(++pageChanged,
          controller.animateToPage(--pageChange,
              duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
        },
        child: Text(
          'No',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
