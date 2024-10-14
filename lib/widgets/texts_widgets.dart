import 'package:flutter/material.dart';

class TextsWidgets extends StatelessWidget {
  final String greeting;
  final String subtitle;
  final double greetingFontSize;
  final double subtitleFontSize;
  final Color greetingColor;
  final Color subtitleColor;

  const TextsWidgets({
    Key? key,
    required this.greeting,
    required this.subtitle,
    this.greetingFontSize = 30.0,
    this.subtitleFontSize = 16.0,
    this.greetingColor = const Color.fromARGB(255, 252, 250, 245),
    this.subtitleColor = const Color.fromARGB(255, 252, 250, 245),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          greeting,
          style: TextStyle(
            fontSize: greetingFontSize,
            fontWeight: FontWeight.bold,
            color: greetingColor,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: subtitleFontSize,
            color: subtitleColor,
          ),
        ),
      ],
    );
  }
}
