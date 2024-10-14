import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  final String imagePath; 

  const ImageWidgets({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4, 
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath), 
          fit: BoxFit.cover, 
        ),
      ),
    );
  }
}
