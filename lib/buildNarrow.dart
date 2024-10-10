import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'urlSupport.dart';
import 'customWidgets.dart';

import 'buildWide.dart';

Widget buildNarrow(
    double deviceWidth, double deviceHeight, BuildContext context) {
  var sectionHeight = deviceHeight * 10 / 12;

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
                        padding: EdgeInsets.only(bottom: 18, top: 18),
                        width: deviceWidth / 4,
                        child: CircleAvatar(
                          radius: 105.0,
                          backgroundImage: AssetImage('images/me.jpg'),
                        ),
                      ),
                      Text(
                        "Hi, my name is",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Kinga Żmuda",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        "Computer Science Student @ Jagiellonian University in Cracow. Google SkillUp Alumni. SFI Academic IT Festival Organizer. Software Engineer eager to tackle new challanges.",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: SocialMediaButton.linkedin(
                              url: "https://www.linkedin.com/in/kingazmuda/",
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: SocialMediaButton.github(
                              url: "https://github.com/kingazm",
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          /*TextButton(
                            child: Text("My CV", style: TextStyle(fontSize: 20)),
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Colors.white.withOpacity(0.9)),
                              foregroundColor:
                              MaterialStatePropertyAll<Color>(Colors.black),
                            ),
                            onPressed: myLaunchUrl,
                          ),*/
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
                        MyBanner(Icons.computer_outlined, "App development", 5,
                            deviceHeight, deviceWidth * 1.86),
                        MyBanner(Icons.auto_stories_outlined, "Tutoring", 5,
                            deviceHeight, deviceWidth * 1.86),
                      ],
                    ),
                    Row(
                      children: [
                        MyBanner(Icons.border_color, "Design", 5, deviceHeight,
                            deviceWidth * 1.86),
                        MyBanner(Icons.diversity_3, "Non-profit work", 5,
                            deviceHeight, deviceWidth * 1.86),
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
                          //MyBanner(Icons.question_mark, "", 5, deviceHeight, deviceWidth*1.86),
                          InkWell(
                            child: MyImageBanner(
                                AssetImage('images/breathee.png'),
                                "",
                                5,
                                deviceHeight,
                                deviceWidth * 1.86),
                            onTap: () => dialogBuilder(
                                context,
                                'title',
                                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vestibulum nulla tellus, ac congue urna dictum vitae. Sed sit amet risus fringilla, mollis quam nec, dapibus elit. Suspendisse vehicula libero in turpis ornare sodales. Proin iaculis, lorem at tristique accumsan, tortor dolor tempor nisi, vitae vestibulum sapien ipsum sed tellus. Aenean ut mi lectus. Donec id fermentum magna. Sed vitae fermentum arcu.Nam id ligula luctus, ultricies ipsum in, volutpat urna. Nulla fringilla mattis erat, vehicula porttitor nisl iaculis id. Nunc pellentesque sapien nec augue mollis posuere. Fusce laoreet dui ut malesuada pellentesque. Vestibulum molestie tincidunt efficitur. Vestibulum congue ligula a ex consequat, ac hendrerit odio mattis. Donec felis lorem, lacinia in diam nec, vehicula varius nunc. Nunc id velit lobortis urna consectetur placerat nec ac sapien. Nullam mattis lacinia mauris, vel blandit mauris dignissim nec. Sed facilisis ante libero, a dignissim libero vehicula vitae. Duis quis tortor est. Suspendisse vel ex sed turpis eleifend mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque pharetra nunc augue, sed accumsan erat ullamcorper et. Nulla at euismod leo. ',
                                'Go to project',
                                projectOneUrlString),
                          ),
                          InkWell(
                            child: MyImageBanner(
                                AssetImage('images/randomWiki.png'),
                                "",
                                5,
                                deviceHeight,
                                deviceWidth * 1.86),
                            onTap: () => dialogBuilder(
                                context,
                                'title',
                                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vestibulum nulla tellus, ac congue urna dictum vitae. Sed sit amet risus fringilla, mollis quam nec, dapibus elit. Suspendisse vehicula libero in turpis ornare sodales. Proin iaculis, lorem at tristique accumsan, tortor dolor tempor nisi, vitae vestibulum sapien ipsum sed tellus. Aenean ut mi lectus. Donec id fermentum magna. Sed vitae fermentum arcu.Nam id ligula luctus, ultricies ipsum in, volutpat urna. Nulla fringilla mattis erat, vehicula porttitor nisl iaculis id. Nunc pellentesque sapien nec augue mollis posuere. Fusce laoreet dui ut malesuada pellentesque. Vestibulum molestie tincidunt efficitur. Vestibulum congue ligula a ex consequat, ac hendrerit odio mattis. Donec felis lorem, lacinia in diam nec, vehicula varius nunc. Nunc id velit lobortis urna consectetur placerat nec ac sapien. Nullam mattis lacinia mauris, vel blandit mauris dignissim nec. Sed facilisis ante libero, a dignissim libero vehicula vitae. Duis quis tortor est. Suspendisse vel ex sed turpis eleifend mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque pharetra nunc augue, sed accumsan erat ullamcorper et. Nulla at euismod leo. ',
                                'Go to project',
                                projectOneUrlString),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          //MyBanner(Icons.question_mark, "", 5, deviceHeight, deviceWidth*3.82),],),
                          InkWell(
                            child: MyImageBanner(
                                AssetImage('images/randomWiki.png'),
                                "",
                                5,
                                deviceHeight,
                                deviceWidth * 3.82),
                            onTap: () => dialogBuilder(
                                context,
                                'title',
                                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vestibulum nulla tellus, ac congue urna dictum vitae. Sed sit amet risus fringilla, mollis quam nec, dapibus elit. Suspendisse vehicula libero in turpis ornare sodales. Proin iaculis, lorem at tristique accumsan, tortor dolor tempor nisi, vitae vestibulum sapien ipsum sed tellus. Aenean ut mi lectus. Donec id fermentum magna. Sed vitae fermentum arcu.Nam id ligula luctus, ultricies ipsum in, volutpat urna. Nulla fringilla mattis erat, vehicula porttitor nisl iaculis id. Nunc pellentesque sapien nec augue mollis posuere. Fusce laoreet dui ut malesuada pellentesque. Vestibulum molestie tincidunt efficitur. Vestibulum congue ligula a ex consequat, ac hendrerit odio mattis. Donec felis lorem, lacinia in diam nec, vehicula varius nunc. Nunc id velit lobortis urna consectetur placerat nec ac sapien. Nullam mattis lacinia mauris, vel blandit mauris dignissim nec. Sed facilisis ante libero, a dignissim libero vehicula vitae. Duis quis tortor est. Suspendisse vel ex sed turpis eleifend mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque pharetra nunc augue, sed accumsan erat ullamcorper et. Nulla at euismod leo. ',
                                'Go to project',
                                projectOneUrlString),
                          ),
                        ],
                      ),
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
            height: deviceHeight / 10,
            child: Center(
              child: Text(
                "© Kinga Żmuda",
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
