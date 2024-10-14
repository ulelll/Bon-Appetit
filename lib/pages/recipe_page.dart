import 'package:flutter/material.dart';
import 'package:bon_appetit/widgets/formcontainer_widgets.dart';
import 'package:bon_appetit/widgets/image_widgets.dart';
import 'package:bon_appetit/widgets/texts_widgets.dart';
import 'package:bon_appetit/widgets/textdoang-widgets.dart';
import 'package:bon_appetit/widgets/icondoang_widgets.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          ImageWidgets(imagePath: 'assets/images/oglioolio.jpg'), 
          FormContainer(
            height: 800,
            borderRadius: 40.0,
            topPadding: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100),  
                   Positioned(
                      top: 100,
                      left: 10,
                      right: 0,
                      child: Center(
                            child: 
                              TextsWidgets(
                              greeting: 'Spaghetti Aglio e Olio',
                              subtitle: 'Spaghetti Aglio e Olio is a classic Italian dish featuring \nal dente spaghetti tossed in fragrant garlic-infused olive\noil, with a hint of red pepper flakes for a mild kick.',
                              subtitleFontSize: 16,
                              greetingColor: Color.fromARGB(255, 115, 40, 165),
                              subtitleColor: Color.fromARGB(255, 227, 227, 227),
                            //  greetingFontSize:,
                        ),
                      ),
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
