import 'package:bmi_calculator/screens/home_page.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi,required this.age,required this.gender});

  final double bmi;
  final Gender gender;
  final int age;

  Widget titleWeight() {
    if (bmi >= 25.5) {
      return const Text(
        'OVER WEIGHT',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red),
      );
    } else if (bmi > 18.5) {
      return const Text('NORMAL WEIGHT',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green));
    } else {
      return const Text('UNDER WEIGHT',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red));
    }
  }
  Widget adviceWeight(){
    if (bmi >= 25.5) {
      return const Text(
        'Eat less,go for a run and Exercise!',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red),
      );
    } else if (bmi > 18.5) {
      return const Text('Good Keep it Up!',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green));
    } else {
      return const Text('Eat more food and take care of your self',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RESULT'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Your Result',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Card(
              elevation: 16,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('AGE: $age',),
                const SizedBox(height: 15,),
                Text('GENDER: $gender'),
              ],),
            ),
            Container(

              color:Colors.white30,
              width: double.infinity,
              height: 450,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    titleWeight(),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: const TextStyle(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Normal Range',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '18.5-25 kg/m*m',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                   adviceWeight()
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor:Colors.deepOrange,
                  ),
                  child: const Text('Re-Calculate'),
                ))
          ],
        ),
      ),
    );
  }
}
