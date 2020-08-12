import 'package:flutter/material.dart';

import './noButton.dart';
import './yesButton.dart';

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
    // var questions = ["Question 1?", "Question 2?", "Question 3?"];

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
          // pageSnapping: false,
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
              // PAGE 1 STARTS HERE ============================
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    height: 50,
                    // color: Colors.teal[200],
                    decoration: BoxDecoration(
                      color: Colors.teal[200],
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                      ),
                    ),

                    child: Center(
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
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal[50],
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Have you ever had a biopsy regarding this area before?",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            // SizedBox for space
                            SizedBox(height: 50),
                            Yesbutton(pageController, pageChanged),
                            Nobutton(pageController, pageChanged),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Text(
                  //   "Have you ever had a biopsy regarding this area before?",
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //   ),
                  // ),
                  // // SizedBox for space
                  // SizedBox(height: 50),
                  // Yesbutton(pageController, pageChanged),
                  // Nobutton(pageController, pageChanged),
                ],
              ),
            ),
            Container(
              // PAGE 2 STARTS HERE ============================
              child: Column(
                children: <Widget>[
                  Text(
                    "Please answer the following question 2.",
                  ),
                  Text(
                    "Have you ever had a biopsy regarding this area before?",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 50),
                  Yesbutton(pageController, pageChanged),
                  Nobutton(pageController, pageChanged),
                ],
              ),
            ),
            Container(
              // PAGE 3 STARTS HERE ============================
              child: Column(
                children: <Widget>[
                  Text(
                    "Please answer the following question 3.",
                  ),
                  Text(
                    "Have you ever had a biopsy regarding this area before?",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 50),
                  Yesbutton(pageController, pageChanged),
                  Nobutton(pageController, pageChanged),
                ],
              ),
            )
          ],
        ));
  }
}
