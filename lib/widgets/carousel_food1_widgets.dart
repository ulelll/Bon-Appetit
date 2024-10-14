import 'package:flutter/material.dart';
import 'package:bon_appetit/widgets/cardfood_widgets.dart';
import 'package:get/get.dart';
import 'package:bon_appetit/pages/recipe_page.dart';

class CarouselFood1Widgets extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {'image': 'assets/images/oglioolio.jpg', 'title': 'Oglio Olio'},
    {'image': 'assets/images/mohito.jpg', 'title': 'Mohito'},
    {'image': 'assets/images/minipancake.jpg', 'title': 'Mini Pancakes'},
    {'image': 'assets/images/klepon.jpg', 'title': 'Klepon'},
    {'image': 'assets/images/cookies.jpg', 'title': 'Cookie'},
    {'image': 'assets/images/chickencurry.jpg', 'title': 'Chicken Curry'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return CardfoodWidgets(
            imagePath: foodItems[index]['image']!,
            title: foodItems[index]['title']!,
           onTap: () {
                if (index == 0) {
                  Get.to(() => RecipePage());
                } else {
                  print('Clicked on: ${foodItems[index]['title']}');
                }
              },

          );
        },
      ),
    );
  }
}
