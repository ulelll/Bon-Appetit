import 'package:flutter/material.dart';

class TextfieldWidgets extends StatelessWidget {
  final String label;
  final bool obscureText;
  final IconData suffixIcon;

  const TextfieldWidgets ({
    Key? key,
    required this.label,
    this.obscureText = false,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon, color: Colors.grey),
        labelText: label,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 248, 226, 82),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
