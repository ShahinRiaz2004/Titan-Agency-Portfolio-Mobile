import 'package:flutter/material.dart';
import 'package:titan_information_app/Pages/splash_screen.dart';

void main() {
  runApp(const TitanApp());
}

class TitanApp extends StatefulWidget {
  const TitanApp({super.key});

  @override
  State<TitanApp> createState() => _TitanAppState();
}

class _TitanAppState extends State<TitanApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
