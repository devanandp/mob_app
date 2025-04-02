import 'package:flutter/material.dart';
import 'package:mob_app/views/mobile/mobile_screen.dart';

class MobSplashScreen extends StatefulWidget {
  const MobSplashScreen({super.key});

  @override
  _MobSplashScreenState createState() => _MobSplashScreenState();
}

class _MobSplashScreenState extends State<MobSplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    if (!mounted) return;
    await Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MobileScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/mob.png'),
      ),
    );
  }
}
