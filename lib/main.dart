import 'package:flutter/material.dart';
import 'package:news_app_clone/screens/HomeScreen.dart';
import 'package:news_app_clone/screens/MainScreen.dart';
import 'package:news_app_clone/screens/explore.dart';
import 'package:news_app_clone/screens/newsscreen.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
