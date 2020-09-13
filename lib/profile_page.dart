import 'package:dhairay_thakur/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);
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
                      ProfileInfo(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      SocialInfo(),
                    ],
                  ),
                  largeScreen: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      ProfileInfo(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      SocialInfo(),
                    ],
                  ),
                ),
              ),
            )));
  }
}


class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        width: 2,
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
        duration: Duration(seconds: 1),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("dt.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              Color(0xffB8FB3C).withOpacity(0.25),
              BlendMode.color,
            ),
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: Color(0xffB8FB3C)),
      ),
      Text(
        "Dhairay\nThakur",
        textScaleFactor: 4.5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Junior Undergraduate at IIT (BHU), Varanasi\n"
        "Software Engineer to be..\n"
        "Android and Flutter 💖\n",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text(
              'Resume',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
              ),
            ),
            color: Color(0xffB8FB3C),
            onPressed: () {
              html.window.open(
                  "https://drive.google.com/file/d/1SBIwNj1x-gD4bgMTQjx9BUXK2wbFyzCV/view?usp=sharing",
                  "resume");
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          OutlineButton(
            borderSide: BorderSide(
              width: 5,
              color: Color(0xffB8FB3C),
            ),
            shape: StadiumBorder(),
            child: Text("Say Hi!"),
            color: Color(0xffB8FB3C),
            onPressed: () {
              launch(
                  'mailto:dhairaythakur.che18@iitbhu.ac.in?subject=Contacting From Portfolio&body=');
            },
            padding: EdgeInsets.all(10),
          )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      NavButton(
        text: "Github",
        onPressed: () {
          html.window.open("https://github.com/dhairay-thakur", "Git");
        },
        color: Color(0xff5CE5D5),
      ),
      NavButton(
        text: "LinkedIn",
        onPressed: () {
          html.window
              .open("https://www.linkedin.com/in/dhairay-thakur/", "Linkedin");
        },
        color: Color(0xff5CE5D5),
      ),
      NavButton(
        text: "Codeforces",
        onPressed: () {
          html.window.open("https://codeforces.com/profile/Glenfiddich", "cf");
        },
        color: Color(0xff5CE5D5),
      ),
    ];
  }

  Widget copyRightText() => Text(
        "Dhairay Thakur ©️2020",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //see
          ...socialMediaWidgets(),
          copyRightText(),
        ],
      ),
    );
  }
}
