import 'package:flutter/material.dart';
import 'package:dhairay_thakur/responsive_widget.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Scaffold(
            backgroundColor: Colors.blueGrey[900],  
            body: SingleChildScrollView(
              child: AnimatedPadding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.075),
                duration: Duration(seconds: 1),
                child: ResponsiveWidget(
                  smallScreen: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      // ProfileInfo(),
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
                       Center(child: Text('About me')),
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