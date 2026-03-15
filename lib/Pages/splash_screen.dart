import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:titan_information_app/Pages/AboutPage.dart';
import 'package:titan_information_app/Pages/MainPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: Color(0xff9EFF00),

        duration: const Duration(seconds: 7),
        childWidget: SizedBox(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/Logo.png"),
              Text(
                'T I T A N',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 48,
                  color: Color(0xff1A1A1A),
                ),
              ),
              SizedBox(
                width: 250, // Controls how wide the bar is
                child: TweenAnimationBuilder<double>(
                  duration: const Duration(
                    seconds: 6,
                  ), // Matches splash duration
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) {
                    return LinearProgressIndicator(
                      value: value, // Fills the bar based on the timer
                      backgroundColor: Color(0xff72B309),
                      color: Color(0xff1A1A1A), // Change to your brand color
                      minHeight: 6, // Makes the bar thicker
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        nextScreen: const MainPage(),
      ),
    );
  }
}
