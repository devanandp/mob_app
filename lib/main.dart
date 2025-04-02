import 'package:flutter/material.dart';
import 'package:mob_app/views/mobile/mob_splash_screen.dart';
import 'package:mob_app/views/tab_desktop/tab_screen.dart';

import 'shared/app_theme.dart';
import 'views/tab_desktop/desktop_screen.dart';
import 'widgets/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwiggyUI',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      home: const Responsive(
        mobile: MobSplashScreen(),
        tablet: TabScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
