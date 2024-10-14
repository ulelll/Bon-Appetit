import 'package:flutter/material.dart';
import 'package:bon_appetit/widgets/bgbgradient_no_text.dart';
import 'package:get/get.dart';
//import 'package:bon_appetit/widgets/btnsearch_widgets.dart';
import 'package:bon_appetit/widgets/formcontainer_widgets.dart';
import 'package:bon_appetit/widgets/fotobulat_widgets.dart';
//import 'package:bon_appetit/widgets/texts_widgets.dart';
import 'package:bon_appetit/widgets/containertext_widgets.dart';
import 'package:bon_appetit/widgets/customiconbtn_widgets.dart';
import 'package:bon_appetit/widgets/textdoang-widgets.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BggradientNoText(),
          const FormContainer(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100), 
                ],
              ),
            ),
          ),
          
          const Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Center( 
              child: FotobulatWidgets(
                imagePath: 'assets/images/violet.jpg',
                radius: 80, 
                borderColor: Colors.white,
                borderWidth: 4.0,
              ), 
            ),
          ),

          const Positioned(
            top: 300,
            left: 10,
            right: 0,
            child: Center(
                 child:Textdoangwidgets(
                  h1: 'Violet',
                  h1FontSize: 30,
                  h1Color: Color.fromARGB(255, 243, 218, 98),
                  fontWeight: FontWeight.bold,
                ),
             ),
           ),

          const Positioned(
              top: 320,
              left: 45,
              right: 0,
              child: Center(
                child: ContainertextWidgets( 
                  label: "",
                  content: "violet.evergarden@gmail.com",
                  fontSize: 14,
                  contentAlignment: Alignment.center, 
                ),
              ),
            ),
           Positioned(
            top: 400,
            left: 45,
            right: 50,
            child: Center(
              child:
                CustomIconBtn(
                  text: "Edit Profile",
                  icon: Icons.edit,
                  onPressed: () { Get.toNamed('/loginpage');
                  },
                  width: 380, 
                  height: 45, 
                  buttonColor: const Color.fromARGB(255, 119, 38, 121),
                  borderRadius: 50, 
                ),
              ),
           ),
            Positioned(
            top: 600,
            left: 50,
            right: 50,
            child: Center(
              child:
                CustomIconBtn(
                  text: "Log out",
                  icon: Icons.logout,
                  onPressed: () { Get.toNamed('/getstartedpage');
                  },
                  width: 300, 
                  height: 45, 
                  buttonColor: const Color.fromARGB(255, 229, 98, 98),
                  borderRadius: 50, 
                ),
              ),
           ),
        ],
      ),
    );
  }
}
