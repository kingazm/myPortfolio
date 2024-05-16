import 'package:flutter/material.dart';
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
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: deviceHeight / 10,
        actions: TopNavigationBar, //My custom widget
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 420) {
            return buildWide(deviceWidth,
                deviceHeight);
          } else {
            return buildNarrow(deviceWidth, deviceHeight);
          }
        },
      ),
    );
  }
}
