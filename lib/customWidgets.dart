import 'package:flutter/material.dart';
import 'urlSupport.dart';
import 'buildWide.dart';

Widget MyBanner(IconData chosenIcon, String label, int sizeIndicator, double deviceHeight, double deviceWidth) {
  //My custom widget expanding Card to my use here
  return Card(
    child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            chosenIcon,
            size: deviceWidth / 20,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: deviceWidth / 50,
            ),),
        ],
      ),
      height: deviceWidth / sizeIndicator,
      width: deviceWidth / sizeIndicator,
    ),
  );
}

List<Widget> TopNavigationBar = [
  IconButton(
    icon: Icon(Icons.home),
    tooltip: 'Home',
    onPressed: () {
      Scrollable.ensureVisible(home.currentContext!);
    },
  ),
  SizedBox(
    width: 20,
  ),
  IconButton(
    icon: Icon(Icons.person_pin_circle),
    tooltip: 'Profile',
    onPressed: () {
      Scrollable.ensureVisible(profile.currentContext!);
    },
  ),
  SizedBox(
    width: 20,
  ),
  IconButton(
    icon: Icon(Icons.rocket_launch_sharp),
    tooltip: 'Projects',
    onPressed: () {
      Scrollable.ensureVisible(projects.currentContext!);
    },
  ),
  SizedBox(
    width: 20,
  ),
  IconButton(
    icon: Icon(Icons.mail),
    tooltip: 'Contact me!',
    onPressed: myLaunchContact
  ),
  SizedBox(
    width: 20,
  ),
];
