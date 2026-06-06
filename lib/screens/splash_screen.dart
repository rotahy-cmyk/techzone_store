import 'package:flutter/material.dart';
import 'navigation_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void goToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const NavigationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToHome(context),
      onVerticalDragEnd: (_) => goToHome(context),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 1.2,
              colors: [
                Color(0xff8A2BE2),
                Color(0xff3D2C8D),
                Color(0xff050505),
              ],
            ),
          ),
          child: const Center(
            child: Text(
              "TechZone",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}