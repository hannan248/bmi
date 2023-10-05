import 'package:bmi_calculator/screens/splash.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const BMI());
}
class BMI extends StatelessWidget{
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return(  MaterialApp(

      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),),
      home:const SplashScreen(),
    ));
  }

}