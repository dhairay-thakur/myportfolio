import 'package:flutter/material.dart';
import 'package:dhairay_thakur/responsive_widget.dart';
import 'dart:html' as html;

class WorkPage extends StatelessWidget {
  const WorkPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Scaffold(
            backgroundColor: Colors.blueGrey[900],
            body: SingleChildScrollView(
              child: AnimatedPadding(
                padding:
                    EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.05),
                duration: Duration(seconds: 1),
                child: ResponsiveWidget(
                  smallScreen: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
//content
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            // width: MediaQuery.of(context).size.width * 0.175,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                      image: AssetImage("expense_tracker.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  child: Text(
                                    "Expense Tracker App",
                                    style: TextStyle(
                                        fontSize: 20,
                                        backgroundColor: Colors.black),
                                    textAlign: TextAlign.center,
                                  ), // button text
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://github.com/dhairay-thakur/expense_tracker",
                                      "expense_tracker");
                                },
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              GestureDetector(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                      image: AssetImage("blood_bank.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Text(
                                    "Blood Bank App",
                                    style: TextStyle(
                                        fontSize: 20,
                                        backgroundColor: Colors.black),
                                    textAlign: TextAlign.center,
                                  ), // button text
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://github.com/dhairay-thakur/BloodBankCommunityApp",
                                      "BloodBankCommunityApp");
                                },
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              GestureDetector(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                      image: AssetImage("todo_list.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Text(
                                    "To-Do List App",
                                    style: TextStyle(
                                        fontSize: 20,
                                        backgroundColor: Colors.black),
                                    textAlign: TextAlign.center,
                                  ), // button text
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://github.com/dhairay-thakur/ToDo-App",
                                      "ToDo-App");
                                },
                              ),
                              FlatButton(
                                onPressed: () {
                                  html.window.open(
                                      "https://github.com/dhairay-thakur/",
                                      "MyGithub");
                                },
                                child: Text(
                                  "See More...",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      // SocialInfo(),
                    ],
                  ),
                  largeScreen: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
//content
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                      image: AssetImage("expense_tracker.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Text(
                                    "Expense Tracker App",
                                    style: TextStyle(
                                        fontSize: 20,
                                        backgroundColor: Colors.black),
                                    textAlign: TextAlign.center,
                                  ), // button text
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://github.com/dhairay-thakur/expense_tracker",
                                      "expense_tracker");
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                      image: AssetImage("blood_bank.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Text(
                                    "Blood Bank App",
                                    style: TextStyle(
                                        fontSize: 20,
                                        backgroundColor: Colors.black),
                                    textAlign: TextAlign.center,
                                  ), // button text
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://github.com/dhairay-thakur/BloodBankCommunityApp",
                                      "BloodBankCommunityApp");
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                      image: AssetImage("todo_list.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Text(
                                    "ToDo List App",
                                    style: TextStyle(
                                        fontSize: 20,
                                        backgroundColor: Colors.black),
                                    textAlign: TextAlign.center,
                                  ), // button text
                                ),
                                onTap: () {
                                  html.window.open(
                                      "https://github.com/dhairay-thakur/ToDo-App",
                                      "ToDo-App");
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: FlatButton(
                              onPressed: () {
                                html.window.open(
                                    "https://github.com/dhairay-thakur/",
                                    "My Github");
                              },
                              child: Text(
                                "See More...",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // ProfileInfo(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      // SocialInfo(),
                    ],
                  ),
                ),
              ),
            )));
  }
}
