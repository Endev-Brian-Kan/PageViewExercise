import 'package:flutter/material.dart';

class Yesbutton extends StatelessWidget {
  final Function selectHandler;

  Yesbutton(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      ButtonTheme(
        minWidth: 150,
        // height: 100,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.teal[200],
          onPressed: () {
            pageController.animateToPage(++pageChanged,
                duration: Duration(milliseconds: 250),
                curve: Curves.bounceInOut);
          },
          child: Text(
            'Yes',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
