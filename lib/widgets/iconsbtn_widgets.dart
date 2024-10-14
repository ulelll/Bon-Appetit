import 'package:flutter/material.dart';

class IconsBtnWidgets extends StatelessWidget {
  final IconData icon; 
  final Color color; 
  final double size; 
  final VoidCallback onPressed; 

  const IconsBtnWidgets({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.color = Colors.black, 
    this.size = 24.0, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: color, size: size),
      onPressed: onPressed,
    );
  }
}
