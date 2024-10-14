import 'package:flutter/material.dart';
//carousel, home

class CardfoodWidgets extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const CardfoodWidgets({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              height: 180, 
              width: 110, 
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black54, 
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15.0),
                  top: Radius.circular(15.0),
                ),
              ),
              height: 70,
              width: 110,
              padding: const EdgeInsets.all(5.0),
              child: Center( 
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
