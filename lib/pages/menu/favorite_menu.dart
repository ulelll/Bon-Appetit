import 'package:bon_appetit/widgets/carousel_fav_widgets.dart';
import 'package:flutter/material.dart';
import 'package:bon_appetit/widgets/bgbgradient_no_text.dart';
import 'package:bon_appetit/widgets/formcontainer_widgets.dart';
import 'package:bon_appetit/widgets/textdoang-widgets.dart';
import 'package:bon_appetit/widgets/icondoang_widgets.dart';

class FavoriteMenu extends StatelessWidget {
  const FavoriteMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> favorite = [
      {'imagePath': 'assets/images/lavacake.jpg', 'title': 'Lava Cake'},
      {'imagePath': 'assets/images/puddingcaramel.jpg', 'title': 'Dessert'},
      {'imagePath': 'assets/images/italiansalad.jpg', 'title': 'Healthy'},
      {'imagePath': 'assets/images/pastries.jpg', 'title': 'Pastry'},
      {'imagePath': 'assets/images/seafood.jpg', 'title': 'Seafood'},
    ];
    return Scaffold(
      body: Stack(
        children: [
          const BggradientNoText(),
          FormContainer(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 0),
                  // CarouselFood1Widgets(),
                 // const SizedBox(height: 30),
                  const Padding(padding: EdgeInsets.only(right: 200)),
                  CarouselFavWidgets(favorite: favorite),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded( 
                    child: Textdoangwidgets(
                      h1: 'Your Favorite\nRecipes',
                      h1FontSize: 30,
                      h1Color: Color.fromARGB(255, 255, 254, 250),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IcondoangWidgets(
                    icon: Icons.favorite_border_outlined,
                    color: Color.fromARGB(255, 254, 251, 255), 
                    size: 70, 
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
