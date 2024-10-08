import 'package:flutter/material.dart';

class ListImageHoriWidgets extends StatelessWidget {
  final List<String> imagePaths;
  final List<String> titles;

  const ListImageHoriWidgets({
    Key? key,
    required this.imagePaths,
    required this.titles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return _buildImageCard(imagePaths[index], titles[index]);
        },
      ),
    );
  }

  Widget _buildImageCard(String imagePath, String title) {
    return Container(
      width: 120, // Adjust width as needed
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              height: 100,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
