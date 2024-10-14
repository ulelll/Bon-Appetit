import 'package:flutter/material.dart';
import 'package:bon_appetit/widgets/cardfood_widgets.dart'; 

//home

class CarouselCategoriesWidgets extends StatelessWidget {
  final List<Map<String, String>> categories; 

  const CarouselCategoriesWidgets({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal, 
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CardfoodWidgets(
            imagePath: categories[index]['imagePath']!,
            title: categories[index]['title']!,
            onTap: () {
              print('tapped di itu');
            },
          );
        },
      ),
    );
  }
}
