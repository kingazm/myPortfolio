import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _cvUrl = Uri.parse(
    'https://www.smart-hr.pl/wp-content/uploads/2016/10/artykul_CV.jpg'); //placeholder

Future<void> _launchUrl() async {
  if (!await launchUrl(_cvUrl)) {
    throw Exception('Could not launch $_cvUrl');
  }
}

final Uri _contact = Uri.parse('mailto:gwiezdnytusz@gmail.com'); //placeholder

Future<void> _launchContact() async {
  if (!await launchUrl(_contact)) {
    throw Exception('Could not launch $_contact');
  }
}

void main() {
  runApp(MyApp());
}

var home = GlobalKey();
var profile = GlobalKey();
var projects = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: ThemeData.dark(),
      home: AdaptiveLayout(),
    );
  }
}

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 10,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            tooltip: 'Home',
            onPressed: () {
              Scrollable.ensureVisible(home.currentContext!);
            },
          ),
          SizedBox(width: 20),
          IconButton(
            icon: Icon(Icons.person_pin_circle),
            tooltip: 'Profile',
            onPressed: () {
              Scrollable.ensureVisible(profile.currentContext!);
            },
          ),
          SizedBox(width: 20),
          IconButton(
            icon: Icon(Icons.rocket_launch_sharp),
            tooltip: 'Projects',
            onPressed: () {
              Scrollable.ensureVisible(projects.currentContext!);
            },
          ),
          SizedBox(width: 20),
          IconButton(
            icon: Icon(Icons.mail),
            tooltip: 'Contact me!',
            onPressed: _launchContact,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 500) {
            return _buildWide(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height);
          } else {
            return SingleChildScrollView(
                child: Container(
                  height: constraints.maxHeight,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                        "In progress..."
                      ),
                    ],
                                  ),
                  ),
                ),
            );
          }
        },
      ),
    );
  }
}


Widget _buildWide(double deviceWidth, double deviceHeight) {
  //var key1 = GlobalKey();

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: deviceWidth / 20, vertical: 0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            //color: Colors.black,
            key: home,
            height: deviceHeight * 9 / 10,
            child: Row(
              children: [
                Container(
                  width: deviceWidth / 2,
                  //color: Colors.black,
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
                      Text( //PLACEHOLDER DESCRIPTION
                        "Nulla ornare, massa in porta suscipit, diam nisi accumsan risus, non molestie sapien justo id est. Cras hendrerit ex eu ex tristique elementum. Etiam posuere ex vel tortor pretium, non mattis eros bibendum. Ut eu convallis quam, sed cursus lorem. Aenean viverra massa eros, id scelerisque nisl scelerisque a. Ut est dolor, facilisis id leo quis, luctus rutrum dui. Maecenas at aliquam quam. Duis porttitor egestas est, sit amet ultrices lorem maximus non.",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            onPressed: _launchUrl,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: deviceWidth / 14,
                ),
                Container(
                  //padding: EdgeInsets.only(left: deviceWidth/30),
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
            height: deviceHeight * 9 / 10,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: deviceHeight / 40),
                      child: Text(
                        "What I do",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.computer_outlined,
                                size: deviceWidth / 15,
                              ),
                              Text("App development"),
                            ],
                          ),
                          height: deviceWidth / 5,
                          width: deviceWidth / 5,
                        ),
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.auto_stories_outlined,
                                size: deviceWidth / 15,
                              ),
                              Text("Tutoring"),
                            ],
                          ),
                          height: deviceWidth / 5,
                          width: deviceWidth / 5,
                        ),
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.border_color,
                                size: deviceWidth / 15,
                              ),
                              Text("Design"),
                            ],
                          ),
                          height: deviceWidth / 5,
                          width: deviceWidth / 5,
                        ),
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.diversity_3,
                                size: deviceWidth / 15,
                              ),
                              Text("Non-profit work"),
                            ],
                          ),
                          height: deviceWidth / 5,
                          width: deviceWidth / 5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            key: projects,
            height: deviceHeight * 9 / 10,
            //padding: EdgeInsets.only(left: deviceWidth/12),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: deviceHeight / 40),
                      child: Text(
                        "Soon...",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.question_mark,
                                size: deviceWidth / 15,
                              ),
                              Text(""),
                            ],
                          ),
                          height: deviceWidth / 4,
                          width: deviceWidth / 4,
                        ),
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.question_mark,
                                size: deviceWidth / 15,
                              ),
                              Text(""),
                            ],
                          ),
                          height: deviceWidth / 4,
                          width: deviceWidth / 4,
                        ),
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.question_mark,
                                size: deviceWidth / 15,
                              ),
                              Text(""),
                            ],
                          ),
                          height: deviceWidth / 4,
                          width: deviceWidth / 4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
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

