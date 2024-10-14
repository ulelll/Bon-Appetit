import 'package:flutter/material.dart';

class FotobulatWidgets extends StatelessWidget {
  final String imagePath;
  final double radius;
  final Color borderColor;
  final double borderWidth;

  const FotobulatWidgets({
    super.key,
    required this.imagePath,
    this.radius = 40.0,
    this.borderColor = Colors.white,
    this.borderWidth = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius + borderWidth,
      backgroundColor: borderColor,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
