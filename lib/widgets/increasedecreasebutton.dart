import 'package:flutter/material.dart';

class IncreaseDecreaseButton extends StatelessWidget {
  const IncreaseDecreaseButton({
    super.key,
    required this.heading,
    required this.increment,
    required this.decrement,
    required this.number,
  });

  final String heading;
  final Function increment;
  final Function decrement;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: SizedBox(
        height: 150,
        width: 150,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(heading),
            const SizedBox(
              height: 6,
            ),
            Text(number),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    decrement();
                  },
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),),
                  child: const Text('-'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      increment();
                    },
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),),
                    child: const Text('+'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
