import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'urlSupport.dart';
import 'customWidgets.dart';

var home = GlobalKey();
var profile = GlobalKey();
var projects = GlobalKey();

Widget buildWide(double deviceWidth, double deviceHeight) {
  var sectionHeight = deviceHeight * 11 / 12;

  return Container(
    padding: EdgeInsets.symmetric(horizontal: deviceWidth / 20, vertical: 0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            key: home,
            height: sectionHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: deviceWidth / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hi, my name is"),
                      Text(
                        "Kinga Żmuda",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        //PLACEHOLDER DESCRIPTION
                        "Nulla ornare, massa in porta suscipit, diam nisi accumsan risus, non molestie sapien justo id est. Cras hendrerit ex eu ex tristique elementum. Etiam posuere ex vel tortor pretium, non mattis eros bibendum. Ut eu convallis quam, sed cursus lorem. Aenean viverra massa eros, id scelerisque nisl scelerisque a.",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SocialMediaButton.linkedin(
                            url: "https://www.linkedin.com/in/kingazmuda/",
                            size: 22,
                            color: Colors.white,
                          ),
                          SocialMediaButton.github(
                            url: "https://github.com/kingazm",
                            size: 22,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          TextButton(
                            child: Text("My CV"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Colors.white.withOpacity(0.9)),
                              foregroundColor:
                              MaterialStatePropertyAll<Color>(Colors.black),
                            ),
                            onPressed: myLaunchUrl,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: deviceWidth / 4,
                  child: CircleAvatar(
                    radius: 120.0,
                    backgroundImage: AssetImage('images/me.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            key: profile,
            height: sectionHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text(
                    "What I do",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyBanner(Icons.computer_outlined, "App development", 5, deviceHeight, deviceWidth),
                    MyBanner(Icons.auto_stories_outlined, "Tutoring", 5, deviceHeight, deviceWidth),
                    MyBanner(Icons.border_color, "Design", 5, deviceHeight, deviceWidth),
                    MyBanner(Icons.diversity_3, "Non-profit work", 5, deviceHeight, deviceWidth),
                  ],
                ),
              ],
            ),
          ),
          Container(
            key: projects,
            height: sectionHeight,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "Soon...",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyBanner(Icons.question_mark, "", 4, deviceHeight, deviceWidth),
                      MyBanner(Icons.question_mark, "", 4, deviceHeight, deviceWidth),
                      MyBanner(Icons.question_mark, "", 4, deviceHeight, deviceWidth),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: deviceHeight/10,
            child: Center(
              child: Text(
                "© made by yours truly",
              ),
            ),
          ),
        ],
      ),
    ),
  );
}