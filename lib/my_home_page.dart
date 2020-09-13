import 'package:dhairay_thakur/about_page.dart';
import 'package:flutter/material.dart';
import 'package:dhairay_thakur/profile_page.dart';
import 'package:dhairay_thakur/work_page.dart';
import 'package:dhairay_thakur/contact_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);
  var list = ["Home", "About", "Work", "Contact"];
  // var colors = [Colors.orange, Colors.blue, Colors.red, Colors.grey];
  PageController controller = PageController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            color: Colors.blueGrey[700],
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: DTDot(),
                  onTap: () {
                    _scrollToIndex(-1);
                  },
                ),
                Spacer(),
                Row(
                  children: List.generate(3, (index) {
                    return GestureDetector(
                      onTap: () {
                        _scrollToIndex(index);
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Text(
                          list[index + 1],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
          Expanded(
            child: PageView(
                scrollDirection: Axis.vertical,
                pageSnapping: true,
                controller: controller,
                children: List.generate(list.length, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: double.maxFinite,
                    // height: MediaQuery.of(context).size.height,
                    child: widgetLoader(index),
                  );
                })),
          ),
        ],
      )),
    );
  }

  void _scrollToIndex(int index) {
    controller.animateToPage(index + 1,
        duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }

}

widgetLoader(int index) {
  switch (index) {
    case 0:
      return ProfilePage();
    case 1:
      return AboutPage();
    case 2:
      return WorkPage();
    case 3:
      return ContactPage();
  }
}

class DTDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          " DT",
          textScaleFactor: 2,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffB8FB3C),
          ),
        ),
      ],
    );
  }
}
