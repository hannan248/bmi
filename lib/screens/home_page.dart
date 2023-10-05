import 'package:bmi_calculator/screens/resultscreen.dart';
import 'package:bmi_calculator/widgets/increasedecreasebutton.dart';
import 'package:bmi_calculator/widgets/select_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
enum Gender {
  male,
  female,
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 0.0;
  int age = 15;
  int weight = 50;
  Color activeColor = Colors.blue;
  Color inactiveColor = Colors.white;
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: MaleFemaleButton(icon: Icons.male,
                    text: 'MALE',
                    color: selectedGender == Gender.male
                        ? activeColor
                        : inactiveColor,),
                ),
                const Spacer(),
                InkWell(
                  child: MaleFemaleButton(
                    icon: Icons.female,
                    text: 'FEMALE',
                    color: selectedGender == Gender.female
                        ? activeColor
                        : inactiveColor,),
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Card(
              elevation: 12,
              child: Column(
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    '(cm)',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Slider(
                      divisions: 250,
                      label: sliderValue.toString(),
                      value: sliderValue,
                      min: 0.0,
                      max: 250,
                      onChanged: (newValue) {
                        setState(() {
                          sliderValue = newValue;
                        });
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IncreaseDecreaseButton(
                  heading: 'AGE',
                  increment: () {
                    setState(() {
                      age++;
                    });
                  },
                  decrement: () {
                    setState(() {
                      if (age <= 0) {
                        return;
                      }
                      age--;
                    });
                  },
                  number: age.toString(),
                ),
                const Spacer(),
                IncreaseDecreaseButton(
                  heading: 'Weight',
                  increment: () {
                    setState(() {
                      weight++;
                    });
                  },
                  decrement: () {
                    setState(() {
                      if (age <= 0) {
                        return;
                      }
                      weight--;
                    });
                  },
                  number: weight.toString(),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  double bmi = weight /
                      ((sliderValue / 100) * (sliderValue / 100));

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => ResultScreen(bmi: bmi, age:age, gender:selectedGender,)),);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor:Colors.deepOrange,
                ),
                child: const Text('Calculate'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
