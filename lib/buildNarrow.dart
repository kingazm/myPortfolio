import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'urlSupport.dart';
import 'customWidgets.dart';

import 'buildWide.dart';

Widget buildNarrow(double deviceWidth, double deviceHeight) {
  var sectionHeight = deviceHeight* 10/12;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: deviceWidth / 10, vertical: 0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            key: home,
            height: sectionHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: deviceWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 40, top: 20),
                        width: deviceWidth / 4,
                        child: CircleAvatar(
                          radius: 110.0,
                          backgroundImage: AssetImage('images/me.jpg'),
                        ),
                      ),
                      Text("Hi, my name is",
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                      Text(
                        "Kinga Żmuda",
                        style: TextStyle(
                          fontSize: 44,
                        ),
                      ),
                      Text(
                        //PLACEHOLDER DESCRIPTION
                        "Nulla ornare, massa in porta suscipit, diam nisi accumsan risus, non molestie sapien justo id est.",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SocialMediaButton.linkedin(
                            url: "https://www.linkedin.com/in/kingazmuda/",
                            size: 40,
                            color: Colors.white,
                          ),
                          SocialMediaButton.github(
                            url: "https://github.com/kingazm",
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          TextButton(
                            child: Text("My CV", style: TextStyle(fontSize: 20)),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        MyBanner(Icons.computer_outlined, "App development", 5, deviceHeight, deviceWidth*1.86),
                        MyBanner(Icons.auto_stories_outlined, "Tutoring", 5, deviceHeight, deviceWidth*1.86),
                      ],
                    ),
                    Row(
                      children: [
                        MyBanner(Icons.border_color, "Design", 5, deviceHeight, deviceWidth*1.86),
                        MyBanner(Icons.diversity_3, "Non-profit work", 5, deviceHeight, deviceWidth*1.86),
                      ],
                    ),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          MyBanner(Icons.question_mark, "", 5, deviceHeight, deviceWidth*1.86),
                          MyBanner(Icons.question_mark, "", 5, deviceHeight, deviceWidth*1.86),
                        ],
                      ),
                      Row(children: [MyBanner(Icons.question_mark, "", 5, deviceHeight, deviceWidth*3.82),],),
                    ],
                  ),
                ],
              ),
            ),
          ),
          /*Container(
            height: sectionHeight,
          ),*/
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