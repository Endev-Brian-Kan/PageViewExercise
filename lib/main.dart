import 'package:flutter/material.dart';

import './pageTemplate.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: pageController,
      onPageChanged: (index) {
        setState(() {
          pageChanged = index;
        });
        print(pageChanged);
      },
      children: <Widget>[
        // PAGE 1 STARTS HERE ============================
        Pagetemplate(pageController, pageChanged),

        // PAGE 2 STARTS HERE ============================
        Pagetemplate(pageController, pageChanged),

        // PAGE 3 STARTS HERE ============================
        Pagetemplate(pageController, pageChanged),
      ],
    ));
  }
}
