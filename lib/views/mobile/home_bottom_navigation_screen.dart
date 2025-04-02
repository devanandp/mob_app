import 'package:flutter/material.dart';
import 'package:mob_app/views/mobile/mob/mob_home_screen.dart';

import '../../utils/app_colors.dart';
import 'account/account_screen.dart';

class HomeBottomNavigationScreen extends StatefulWidget {
  const HomeBottomNavigationScreen({super.key});

  @override
  HomeBottomNavigationScreenState createState() =>
      HomeBottomNavigationScreenState();
}

class HomeBottomNavigationScreenState
    extends State<HomeBottomNavigationScreen> {
  final List<Widget> _children = [
    const MobHomeScreen(),
    AccountScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final labelTextStyle =
        Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 8.0);
    return Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 90.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: darkOrange,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedIndex,
          selectedLabelStyle: labelTextStyle,
          unselectedLabelStyle: labelTextStyle,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'SWIGGY',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'ACCOUNT',
            ),
          ],
        ),
      ),
    );
  }
}
