import 'package:flutter/material.dart';
import 'package:dhairay_thakur/responsive_widget.dart';
import 'dart:html' as html;
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    loadButton(icon, url) {
      return InkWell(
        borderRadius: BorderRadius.circular(
          ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.08
              : MediaQuery.of(context).size.width * 0.05,
        ),
        onTap: () {
          html.window.open(url, icon);
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.08
              : MediaQuery.of(context).size.width * 0.05,
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.08
              : MediaQuery.of(context).size.width * 0.05,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(icon),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    renderScreen() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text(
                "Lets Get in Touch",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[300],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Container(
                height: 8,
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  color: Color(0xffB8FB3C),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(
                    ResponsiveWidget.isSmallScreen(context)
                        ? MediaQuery.of(context).size.height * 0.08
                        : MediaQuery.of(context).size.width * 0.05,
                  ),
                  onTap: () {
                    launch(
                        'mailto:dhairaythakur.che18@iitbhu.ac.in?subject=Contacting From Portfolio&body=');
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: ResponsiveWidget.isSmallScreen(context)
                        ? MediaQuery.of(context).size.height * 0.08
                        : MediaQuery.of(context).size.width * 0.05,
                    width: ResponsiveWidget.isSmallScreen(context)
                        ? MediaQuery.of(context).size.height * 0.08
                        : MediaQuery.of(context).size.width * 0.05,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("mail.png"),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                loadButton('linkedin.png',
                    'https://www.linkedin.com/in/dhairay-thakur/'),
                loadButton(
                    'instagram.png', 'http://instagram.com/dhairay_thakur'),
                loadButton(
                    'fb.png', 'https://www.facebook.com/dhairay.thakur/'),
                loadButton('twitter.png', 'https://twitter.com/DhairayT'),
                loadButton('github.png', 'https://github.com/dhairay-thakur/'),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            // SocialInfo(),
          ],
        );

    return ResponsiveWidget(
        largeScreen: Scaffold(
            backgroundColor: Colors.blueGrey[900],
            body: SingleChildScrollView(
              child: AnimatedPadding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.075),
                duration: Duration(seconds: 1),
                child: ResponsiveWidget(
                  largeScreen: renderScreen(),
                  smallScreen: renderScreen(),
                ),
              ),
            )));
  }
}
