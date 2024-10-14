import 'package:flutter/material.dart';

class Textdoangwidgets extends StatelessWidget {
  final String h1;
  final double h1FontSize;
  final Color h1Color;
  final FontWeight fontWeight; 

  const Textdoangwidgets({
    Key? key,
    required this.h1,
    this.h1FontSize = 30.0,
    this.h1Color = const Color.fromARGB(255, 252, 250, 245),
    this.fontWeight = FontWeight.normal, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          h1,
          style: TextStyle(
            fontSize: h1FontSize,
            fontWeight: fontWeight, 
            color: h1Color,
          ),
        ),
        const SizedBox(height: 3),
      ],
    );
  }
}
