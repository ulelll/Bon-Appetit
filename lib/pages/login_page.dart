import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bon_appetit/widgets/btn_widgets.dart'; 
import 'package:bon_appetit/widgets/textfield_widgets.dart';
import 'package:bon_appetit/widgets/bggradient_widgets.dart';
import 'package:bon_appetit/widgets/formcontainer_widgets.dart';
import 'package:bon_appetit/widgets/footerlogin_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BggradientWidgets(
            text: 'Hi there! \n Welcome back! ',
          ),
          FormContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextfieldWidgets(
                  label: 'Email or Phone Number',
                  suffixIcon: Icons.check,
                ),

                const SizedBox(height: 20),
                  const TextfieldWidgets(
                    label: 'Password',
                    obscureText: true,
                  suffixIcon: Icons.visibility_off,
                ),
                
                const SizedBox(height: 30),
                BtnWidgets(
                  label: "Let's cook!",
                  onPressed: () {
                    Get.toNamed('/dashboard');
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
        ],
      ),
    );
  }
}
