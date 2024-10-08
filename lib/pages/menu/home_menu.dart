import 'package:bon_appetit/widgets/bgbgradient_no_text.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:bon_appetit/widgets/btnsearch_widgets.dart';
//import 'package:bon_appetit/widgets/bgbgradient_no_text.dart';
import 'package:bon_appetit/widgets/formcontainer_widgets.dart';
import 'package:bon_appetit/widgets/fotobulat_widgets.dart';
import 'package:bon_appetit/widgets/texts_widgets.dart';
import 'package:bon_appetit/widgets/carousel_food1_widgets.dart';
//import 'package:bon_appetit/widgets/cardfood_widgets.dart';
import 'package:bon_appetit/widgets/textdoang-widgets.dart';
import 'package:bon_appetit/widgets/carousel_categories_widgets.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

   @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'imagePath': 'assets/images/softscrambledegg.jpg', 'title': 'Breakfast'},
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
                  const SizedBox(height: 30),
                  const BtnsearchWidgets(),
                  const SizedBox(height: 20),
                  const Padding( padding: EdgeInsets.only(right: 195), 
                    child: Textdoangwidgets(
                      h1: 'Top Picks',
                      h1FontSize: 30,
                      h1Color: Color.fromARGB(255, 69, 24, 82),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  CarouselFood1Widgets(),
                  const SizedBox(height: 30), 
                  const Padding( padding: EdgeInsets.only(right: 200),
                    child: Textdoangwidgets(
                      h1: 'Categories',
                      h1FontSize: 25,
                      h1Color: Color.fromARGB(255, 69, 24, 82),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  CarouselCategoriesWidgets(categories: categories), 
                  const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),
                   const Positioned(
                    top: 90,
                    left: 20, 
                    right: 20, 
                    child: Row(
                      children: [
                        FotobulatWidgets(
                          imagePath: 'assets/images/violet.jpg',
                          radius: 40,
                          borderColor: Colors.white,
                          borderWidth: 3.0,
                        ),
                        SizedBox(width: 20), 
                        TextsWidgets(
                          greeting: 'Hi, Violet!',
                          subtitle: 'What do you wanna cook?',
                          greetingFontSize: 30,
                          subtitleFontSize: 16,
                          greetingColor: Color.fromARGB(255, 252, 250, 245),
                          subtitleColor: Color.fromARGB(255, 252, 250, 245),
                        ),
                      ],
                    ),
                 ),
        ],
      ),
    );
  }
}
