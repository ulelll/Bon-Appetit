import 'package:flutter/material.dart';

class ReusePage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Color backgroundColor; 
  final Color titleColor; 
  final Color descriptionColor; 
  final double titleFontSize; 
  final double descriptionFontSize; 
  final FontWeight titleFontWeight; 
  final FontWeight descriptionFontWeight; 
  final double imageWidth; 
  final double imageHeight; 
  final EdgeInsets imagePadding; 

  const ReusePage({
    required this.image,
    required this.title,
    required this.description,
    this.backgroundColor = Colors.white,
    this.titleColor = Colors.black, 
    this.descriptionColor = Colors.black, 
    this.titleFontSize = 24, 
    this.descriptionFontSize = 16, 
    this.titleFontWeight = FontWeight.bold,
    this.descriptionFontWeight = FontWeight.normal, 
    this.imageWidth = 100, 
    this.imageHeight = 100, 
    this.imagePadding = const EdgeInsets.only(bottom: 10), 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: imagePadding, 
            child: Image.asset(
              image,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: titleFontWeight,
              color: titleColor,
            ),
          ),
          const SizedBox(height: 10), 
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: descriptionFontSize,
              fontWeight: descriptionFontWeight,
              color: descriptionColor,
            ),
          ),
        ],
      ),
    );
  }
}
