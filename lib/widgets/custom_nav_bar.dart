import 'package:eco_cleaner/main.dart';
import 'package:eco_cleaner/screens/services.dart';
import 'package:flutter/material.dart';

import '../screens/achievements.dart';
import '../screens/profile.dart';
import 'my_text.dart';
class NavBarView extends StatefulWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {

  int currentIndex = 0;

  List content = [
    ['home', 'Home', const Center(child: Text('Home'))],
    ['services', 'Services', const ServicesView()],
    ['achievements', 'Achievements', const AchievementsView()],
    ['account', 'Account', const Profile()],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content[currentIndex][2],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (v) {
          currentIndex = v;
          setState(() {});
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: content.map((e) {
          final index = content.indexOf(e);
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    getAsset(e[0]),
                    height: 30,
                    width: 30,
                    color: currentIndex == index ? Colors.green : Colors.grey,
                  ),
                ),
                MyText(
                  data: e[1],
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: currentIndex == index ? Colors.green : Colors.grey,
                ),
              ],
            ),
            label: '',
          );
        }).toList(),
      ),
    );
  }
}
