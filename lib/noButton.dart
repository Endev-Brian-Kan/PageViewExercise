import 'package:flutter/material.dart';

class Nobutton extends StatelessWidget {
  final Function selectHandler;

  Nobutton(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
