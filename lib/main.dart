import 'package:flutter/material.dart';
import 'package:news_app_clone/screenes/HomeScreen.dart';
import 'package:news_app_clone/screenes/MainScreen.dart';
import 'package:news_app_clone/screenes/explore.dart';
import 'package:news_app_clone/screenes/newsscreen.dart';

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
