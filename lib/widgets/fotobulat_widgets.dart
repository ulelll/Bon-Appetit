import 'package:flutter/material.dart';

class FotobulatWidgets extends StatelessWidget {
  final String imagePath;
  final double radius;
  final Color borderColor; // Add border color parameter
  final double borderWidth; // Add border width parameter

  const FotobulatWidgets({
    Key? key,
    required this.imagePath,
    required this.radius,
    this.borderColor = Colors.white, // Default border color
    this.borderWidth = 2.0, // Default border width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2 + borderWidth * 2, // Adjust width for border
      height: radius * 2 + borderWidth * 2, // Adjust height for border
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: borderWidth), // Create border
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
