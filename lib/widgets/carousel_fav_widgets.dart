import 'package:flutter/material.dart';
import 'package:bon_appetit/widgets/fotofav_widgets.dart'; 
//fav

class CarouselFavWidgets extends StatelessWidget {
  final List<Map<String, String>> favorite; 

  const CarouselFavWidgets({super.key, required this.favorite});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600, 
      child: ListView.builder(
        scrollDirection: Axis.vertical, 
        itemCount: favorite.length,
        itemBuilder: (context, index) {
          return FotofavWidgets(
            imagePath: favorite[index]['imagePath']!,
            title:favorite[index]['title']!,
            onTap: () {
              print('tapped di itu');
            },
          );
        },
      ),
    );
  }
}
