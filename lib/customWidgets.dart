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

Widget MyImageBanner(AssetImage myImage, String label, int sizeIndicator, double deviceHeight, double deviceWidth) {
  //My custom widget expanding Card to my use here
  return Card(
    child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: myImage,
            //size: deviceWidth / 20,
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
    onPressed: () => LaunchUrl(contactUrlString)
  ),
  SizedBox(
    width: 20,
  ),
];

Future<void> dialogBuilder(BuildContext context, String dialogueTitle, String dialogueText, String dialogueOption, final String destinationUrlString) { //TODO: customize from docs
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(dialogueTitle),
        content:  Text(
            dialogueText //with images causes only issues so provide text info here
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: Text(dialogueOption),
            onPressed: () => LaunchUrl(destinationUrlString)
          ),
        ],
      );
    },
  );
}
