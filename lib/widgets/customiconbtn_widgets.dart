import 'package:flutter/material.dart';
//profile
class CustomIconBtn extends StatelessWidget {
  final String text; 
  final IconData icon; 
  final Color? textColor; 
  final Color? iconColor; 
  final Color? buttonColor; 
  final double? fontSize; 
  final double? iconSize; 
  final double? borderRadius; 
  final double? width; 
  final double? height;
  final VoidCallback onPressed; 

  const CustomIconBtn({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.textColor = Colors.white, 
    this.iconColor = Colors.white, 
    this.buttonColor = Colors.blue, 
    this.fontSize = 16.0, 
    this.iconSize = 24.0, 
    this.borderRadius = 8.0, 
    this.width, 
    this.height, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!), 
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), ),
        child: Row(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Icon(
              icon,
              size: iconSize, 
              color: iconColor, 
            ),
            const SizedBox(width: 8), 
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize, 
                color: textColor, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
