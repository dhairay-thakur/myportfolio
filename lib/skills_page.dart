import 'dart:html';

import 'package:flutter/material.dart';
import 'package:dhairay_thakur/responsive_widget.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    loadText(text) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            // fontStyle: FontStyle.italic,
          ),
        ),
      );
    }

    space() => Container(
          height: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.07
              : MediaQuery.of(context).size.width * 0.04,
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.07
              : MediaQuery.of(context).size.width * 0.04,
        );

    loadIcon(icon, data) {
      return Column(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            height: ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.height * 0.07
                : MediaQuery.of(context).size.width * 0.04,
            width: ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.height * 0.07
                : MediaQuery.of(context).size.width * 0.04,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(icon),
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Text(
            data,
            style: TextStyle(
                // fontSize: MediaQuery.of(context).size.width * 0.01,
                ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.015,
          ),
        ],
      );
    }

    line() => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            height: 2,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              color: Color(0xffB8FB3C),
            ),
          ),
        );

    renderScreen() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Skills",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[300],
                ),
              ),
            ),
            line(),
            loadText('Languages:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loadIcon('c.png', 'C/C++'),
                space(),
                loadIcon('java.png', 'Java'),
                space(),
                loadIcon('dart.jpg', 'Dart'),
                space(),
                loadIcon('php.png', 'PHP'),
              ],
            ),
            loadText('Frameworks:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loadIcon('android.png', 'Android'),
                space(),
                loadIcon('flutter.png', 'Flutter'),
              ],
            ),
            loadText('Databases:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loadIcon('mysql.png', 'MYSQL'),
                space(),
                loadIcon('firebase.png', 'Firebase'),
              ],
            ),
            loadText('Others:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loadIcon('git.png', 'git'),
                space(),
                loadIcon('github.png', 'Github'),
                space(),
                loadIcon('ps.png', 'Photoshop'),
                space(),
                loadIcon('illustrator.png', 'Illustrator'),
                ResponsiveWidget.isSmallScreen(context)
                    ? Container()
                    : space(),
                ResponsiveWidget.isSmallScreen(context)
                    ? Container()
                    : loadIcon('figma.png', 'Figma'),
              ],
            ),
            ResponsiveWidget.isSmallScreen(context)
                    ? loadIcon('figma.png', 'Figma')
                    : Container(),
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
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
          duration: Duration(seconds: 1),
          child: ResponsiveWidget(
            smallScreen: renderScreen(),
            largeScreen: renderScreen(),
          ),
        ),
      ),
    ));
  }
}
