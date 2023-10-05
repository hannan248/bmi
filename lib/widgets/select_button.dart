import 'package:flutter/material.dart';

class MaleFemaleButton extends StatelessWidget {
  const MaleFemaleButton({super.key, required this.icon, required this.text,required this.color});

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 3,
      color: color,
      child: SizedBox(
        height: 150,
        width: 140,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60.0,
              color: Colors.black,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold

              ),
            ),
          ],
        ),
      ),
    );
  }
}
