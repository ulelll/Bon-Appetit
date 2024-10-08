import 'package:flutter/material.dart';

class BggradientNoText extends StatelessWidget {
  const BggradientNoText({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 72, 35, 100),
            Color.fromARGB(255, 162, 102, 183),
          ],
        ),
      ),
    );
  }
}
