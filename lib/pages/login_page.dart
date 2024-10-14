import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bon_appetit/widgets/btn_widgets.dart'; 
import 'package:bon_appetit/widgets/textfield_widgets.dart';
import 'package:bon_appetit/widgets/bggradient_widgets.dart';
import 'package:bon_appetit/widgets/formcontainer_widgets.dart';
import 'package:bon_appetit/widgets/footerlogin_widgets.dart';
import 'package:bon_appetit/widgets/bgbgradient_no_text.dart';
import 'package:bon_appetit/widgets/textdoang-widgets.dart';
import 'package:bon_appetit/widgets/icondoang_widgets.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         const BggradientNoText(),
          FormContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextfieldWidgets(
                  label: 'Email or Phone Number',
                  suffixIcon: Icons.person_2_outlined,
                ),

                const SizedBox(height: 20),
                  const TextfieldWidgets(
                    label: 'Password',
                    obscureText: true,
                  suffixIcon: Icons.lock_open_rounded,
                ),
                
                const SizedBox(height: 30),
                BtnWidgets(
                  label: "Let's cook!",
                  onPressed: () {
                    Get.offNamed('/dashboard');
                  },
                ),
                const SizedBox(height: 40),
                const LoginFooter(
                  text: "Don't have an account?",
                  buttonText: "Sign up here! ",
                  route: '/signuppage',
                ),
              ],
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
                      h1: 'Hi!\nWelcome back!',
                      h1FontSize: 30,
                      h1Color: Color.fromARGB(255, 255, 254, 250),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IcondoangWidgets(
                    icon: Icons.waving_hand,
                    color: Color.fromARGB(255, 254, 251, 255), 
                    size: 80, 
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
