import 'dart:async';
import 'package:bmi_calculator/screens/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (ctx) =>const HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              'images/bmi2.png',
              width: 180,
              height: 180,
            ),
            const SizedBox(
              height: 230,
            ),
            const Text(
              'BMI CALCULATOR',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                fontWeight:FontWeight.bold,
                 ),
            )
          ],
        ),
      ),
    ));
  }
}
