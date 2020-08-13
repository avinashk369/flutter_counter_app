import 'package:counterApp/sample/ui/onboard_screens.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: OnboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
