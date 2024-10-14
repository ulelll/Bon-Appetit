import 'package:flutter/material.dart';

class ContainertextWidgets extends StatelessWidget {
  final String label; 
  final String content; 
  final Color? containerColor; 
  final Color? labelColor; 
  final double? fontSize; 
  final double? width; 
  final Alignment contentAlignment; 

  const ContainertextWidgets({
    Key? key,
    required this.label,
    required this.content,
    this.containerColor = const Color.fromARGB(255, 252, 250, 245), 
    this.labelColor = Colors.grey, 
    this.fontSize = 16.0, 
    this.width = 300, 
    this.contentAlignment = Alignment.centerLeft, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        
        Container(
          alignment: Alignment.centerLeft, 
          child: Text(
            label, 
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: labelColor, 
              
            ),
          ),
        ),
        const SizedBox(height: 5), 
        Container(
          width: width, 
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: containerColor, 
            borderRadius: BorderRadius.circular(40.0),
            border: Border.all(color: const Color.fromARGB(255, 248, 226, 82), width: 1), // Border
          ),
          alignment: contentAlignment, 
          child: Text(
            content, 
            style: TextStyle(
              fontSize: fontSize, 
              fontWeight: FontWeight.normal,
              color: const Color.fromARGB(255, 120, 43, 136),
            ),
          ),
        ),
      ],
    );
  }
}
