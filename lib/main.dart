import 'package:flutter/material.dart';
import 'package:mob_app/views/mobile/mob_splash_screen.dart';

import 'shared/app_theme.dart';
import 'widgets/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobAppUI',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      home: const Responsive(
        mobile: MobSplashScreen(),
      ),
    );
  }
}
