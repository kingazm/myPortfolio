import 'package:flutter/material.dart';
import 'package:portfolio/urlSupport.dart';
import 'buildWide.dart';
import 'buildNarrow.dart';
import 'customWidgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

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

    double deviceHeight = MediaQuery.of(context).size.height;
    globalDeviceHeight = deviceHeight;
    double deviceWidth = MediaQuery.of(context).size.width;
    globalDeviceWidth = deviceWidth;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: deviceHeight / 10,
        actions: TopNavigationBar, //My custom widget
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 430) { //420
            return buildWide(deviceWidth,
                deviceHeight, context);
          } else {
            return buildNarrow(deviceWidth, deviceHeight, context);
          }
        },
      ),
    );
  }
}
