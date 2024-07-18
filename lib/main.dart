import 'package:flutter/material.dart';
import 'package:sportsapp/screens/leagues_screen.dart';
import 'package:sportsapp/screens/splash_screen.dart';

void main() {
  runApp(const SportsApp());
}

class SportsApp extends StatelessWidget {
  const SportsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen() ,
    );
  }
}