import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const TechZoneApp());
}

class TechZoneApp extends StatelessWidget {
  const TechZoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TechZone',
      home: SplashScreen(),
    );
  }
}