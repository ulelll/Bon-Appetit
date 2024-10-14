import 'package:flutter/material.dart';
//home

class CarouselbulatWidgets extends StatelessWidget {
  final List<Map<String, String>> chefs = [
    {'imagePath': 'assets/images/gyrozeppeli.jpg', 'name': ' Chef Gyro'},
    {'imagePath': 'assets/images/kurtcobain.jpg', 'name': 'Chef Kurt'},
    {'imagePath': 'assets/images/childe.jpg', 'name': 'Chef Childe'},
    {'imagePath': 'assets/images/cillianMurphy.jpg', 'name': 'Chef Cillian'},
    {'imagePath': 'assets/images/yasuho.jpg', 'name': 'Chef Yasuho'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chefs.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(chefs[index]['imagePath']!),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 80,
                width: 80,
              ),
              const SizedBox(height: 10),
              
              Text(
                chefs[index]['name']!,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
