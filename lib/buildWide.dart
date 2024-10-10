import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'urlSupport.dart';
import 'customWidgets.dart';

var home = GlobalKey();
var profile = GlobalKey();
var projects = GlobalKey();

Widget buildWide(double deviceWidth, double deviceHeight, BuildContext context) {
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
                        "Computer Science Student @ Jagiellonian University in Cracow.\nGoogle SkillUp Alumni.\nSFI Academic IT Festival Organizer.\nSoftware Engineer eager to tackle new challanges.",
                        style: TextStyle(
                          fontSize: 15,
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
                              url: linkedinString,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child:SocialMediaButton.github(
                              url: githubString,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          /*TextButton(
                            child: Text("My CV"),
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
                      InkWell(
                        child: MyImageBanner(AssetImage('images/breathee.png'), "", 4, deviceHeight, deviceWidth),
                        onTap: () => dialogBuilder(context, 'title', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vestibulum nulla tellus, ac congue urna dictum vitae. Sed sit amet risus fringilla, mollis quam nec, dapibus elit. Suspendisse vehicula libero in turpis ornare sodales. Proin iaculis, lorem at tristique accumsan, tortor dolor tempor nisi, vitae vestibulum sapien ipsum sed tellus. Aenean ut mi lectus. Donec id fermentum magna. Sed vitae fermentum arcu.Nam id ligula luctus, ultricies ipsum in, volutpat urna. Nulla fringilla mattis erat, vehicula porttitor nisl iaculis id. Nunc pellentesque sapien nec augue mollis posuere. Fusce laoreet dui ut malesuada pellentesque. Vestibulum molestie tincidunt efficitur. Vestibulum congue ligula a ex consequat, ac hendrerit odio mattis. Donec felis lorem, lacinia in diam nec, vehicula varius nunc. Nunc id velit lobortis urna consectetur placerat nec ac sapien. Nullam mattis lacinia mauris, vel blandit mauris dignissim nec. Sed facilisis ante libero, a dignissim libero vehicula vitae. Duis quis tortor est. Suspendisse vel ex sed turpis eleifend mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque pharetra nunc augue, sed accumsan erat ullamcorper et. Nulla at euismod leo. ', 'Go to project', projectOneUrlString),
                      ),
                      InkWell(
                        child: MyImageBanner(AssetImage('images/breathee.png'), "", 4, deviceHeight, deviceWidth),
                        onTap: () => dialogBuilder(context, 'title', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vestibulum nulla tellus, ac congue urna dictum vitae. Sed sit amet risus fringilla, mollis quam nec, dapibus elit. Suspendisse vehicula libero in turpis ornare sodales. Proin iaculis, lorem at tristique accumsan, tortor dolor tempor nisi, vitae vestibulum sapien ipsum sed tellus. Aenean ut mi lectus. Donec id fermentum magna. Sed vitae fermentum arcu.Nam id ligula luctus, ultricies ipsum in, volutpat urna. Nulla fringilla mattis erat, vehicula porttitor nisl iaculis id. Nunc pellentesque sapien nec augue mollis posuere. Fusce laoreet dui ut malesuada pellentesque. Vestibulum molestie tincidunt efficitur. Vestibulum congue ligula a ex consequat, ac hendrerit odio mattis. Donec felis lorem, lacinia in diam nec, vehicula varius nunc. Nunc id velit lobortis urna consectetur placerat nec ac sapien. Nullam mattis lacinia mauris, vel blandit mauris dignissim nec. Sed facilisis ante libero, a dignissim libero vehicula vitae. Duis quis tortor est. Suspendisse vel ex sed turpis eleifend mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque pharetra nunc augue, sed accumsan erat ullamcorper et. Nulla at euismod leo. ', 'Go to project', projectOneUrlString),
                      ),
                      InkWell(
                        child: MyImageBanner(AssetImage('images/randomWiki.png'), "", 4, deviceHeight, deviceWidth),
                        onTap: () => dialogBuilder(context, 'title', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vestibulum nulla tellus, ac congue urna dictum vitae. Sed sit amet risus fringilla, mollis quam nec, dapibus elit. Suspendisse vehicula libero in turpis ornare sodales. Proin iaculis, lorem at tristique accumsan, tortor dolor tempor nisi, vitae vestibulum sapien ipsum sed tellus. Aenean ut mi lectus. Donec id fermentum magna. Sed vitae fermentum arcu.Nam id ligula luctus, ultricies ipsum in, volutpat urna. Nulla fringilla mattis erat, vehicula porttitor nisl iaculis id. Nunc pellentesque sapien nec augue mollis posuere. Fusce laoreet dui ut malesuada pellentesque. Vestibulum molestie tincidunt efficitur. Vestibulum congue ligula a ex consequat, ac hendrerit odio mattis. Donec felis lorem, lacinia in diam nec, vehicula varius nunc. Nunc id velit lobortis urna consectetur placerat nec ac sapien. Nullam mattis lacinia mauris, vel blandit mauris dignissim nec. Sed facilisis ante libero, a dignissim libero vehicula vitae. Duis quis tortor est. Suspendisse vel ex sed turpis eleifend mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque pharetra nunc augue, sed accumsan erat ullamcorper et. Nulla at euismod leo. ', 'Go to project', projectOneUrlString),
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
            height: deviceHeight/10,
            child: Center(
              child: Text(
                "© made by Kinga Żmuda",
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

