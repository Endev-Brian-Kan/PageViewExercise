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
    var questions = ["Question 1?", "Question 2?", "Question 3?"];

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
          children: <Widget>[
            Container(
              color: Colors.indigo,
              child: Column(
                children: <Widget>[
                  Text("Please answer the following question 1."),
                  Text("Have you ever had the following symptoms?"),
                  RaisedButton(
                    onPressed: () {
                      pageController.animateToPage(++pageChanged,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.bounceInOut);
                    },
                    child: Text('Yes', style: TextStyle(fontSize: 20)),
                  ),
                  RaisedButton(
                    onPressed: () {
                      pageController.animateToPage(--pageChanged,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.bounceInOut);
                    },
                    child: Text('No', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Text("Please answer the following question 2."),
                  Text("Have you ever had the following symptoms?"),
                  RaisedButton(
                    onPressed: () {
                      pageController.animateToPage(++pageChanged,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.bounceInOut);
                    },
                    child: Text('Yes', style: TextStyle(fontSize: 20)),
                  ),
                  RaisedButton(
                    onPressed: () {
                      pageController.animateToPage(--pageChanged,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.bounceInOut);
                    },
                    child: Text('No', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.brown,
              child: Column(
                children: <Widget>[
                  Text("Please answer the following question 3."),
                  Text("Have you ever had the following symptoms?"),
                  RaisedButton(
                    onPressed: () {
                      pageController.animateToPage(++pageChanged,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.bounceInOut);
                    },
                    child: Text('Yes', style: TextStyle(fontSize: 20)),
                  ),
                  RaisedButton(
                    onPressed: () {
                      pageController.animateToPage(--pageChanged,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.bounceInOut);
                    },
                    child: Text('No', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
