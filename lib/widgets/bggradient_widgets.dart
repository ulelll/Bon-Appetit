import 'package:flutter/material.dart';
//export login signup page


class BggradientWidgets extends StatelessWidget {
  final String text; 

  const BggradientWidgets ({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 72, 35, 100),
          Color.fromARGB(255, 162, 102, 183),
        ]),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 22),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
