import 'package:flutter/material.dart';

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
        appBar: AppBar(title: Text('PageView Demo'), actions: [
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                pageController.animateToPage(--pageChanged,
                    duration: Duration(milliseconds: 250),
                    curve: Curves.bounceInOut);
              }),
          IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                pageController.animateToPage(++pageChanged,
                    duration: Duration(milliseconds: 250),
                    curve: Curves.bounceInOut);
              }),
        ]),
        body: PageView(
          pageSnapping: false,
          // Axis.vertical;
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              pageChanged = index;
            });
            print(pageChanged);
          },
          children: [
            Container(
              color: Colors.indigo,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.brown,
            )
          ],
        ));
  }
}
