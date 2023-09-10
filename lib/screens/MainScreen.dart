import 'package:flutter/material.dart';
import 'package:news_app_clone/screens/HomeScreen.dart';
import 'package:news_app_clone/screens/explore.dart';
import 'package:news_app_clone/screens/newsscreen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIconBottomNavigation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(),
          child: ClipRRect(
            child: BottomNavigationBar(
              currentIndex: _selectedIconBottomNavigation,
              onTap: (int index) {
                setState(() {
                  _selectedIconBottomNavigation = index;
                });
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/profile.png',
                  ),
                  label: 'item1',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/save-2.png',
                  ),
                  label: 'item2',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/add-circle.png',
                  ),
                  label: 'item3',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/discover.png',
                  ),
                  label: 'item4',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/home.png',
                  ),
                  label: 'item1',
                ),
              ],
            ),
          ),
        ),
        body: IndexedStack(
          index: _selectedIconBottomNavigation,
          children: getLayout(),
        ));
  }

  List<Widget> getLayout() {
    return <Widget>[
      Explore(),
      Explore(),
      Explore(),
      Explore(),
      HomeScreen(),
    ];
  }
}
