import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bon_appetit/widgets/btn_widgets.dart'; 
import 'package:bon_appetit/widgets/textfield_widgets.dart';
import 'package:bon_appetit/widgets/bggradient_widgets.dart';
import 'package:bon_appetit/widgets/formcontainer_widgets.dart';
import 'package:bon_appetit/widgets/footersignup_widgets.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BggradientWidgets(
            text: 'Hi there! \nCreate your account',
          ),
          FormContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    const SizedBox(height: 30,),
                    const TextfieldWidgets(
                      label: 'Email Or Phone Number',
                      suffixIcon: Icons.app_registration_rounded,
                    ),
                    const SizedBox(height: 20),
                    const TextfieldWidgets(
                      label: 'Password',
                      obscureText: true,
                      suffixIcon: Icons.lock,
                    ),
                    const SizedBox(height: 30),
                  BtnWidgets(
                    label: "Let's cook!",
                    onPressed: () {
                      Get.offNamed('/dashboard');
                    },
                ),
                const SizedBox(height: 40),
                const SignupFooter(
                  text: "Already have an account?",
                  buttonText: "Log In here",
                  route: '/loginpage',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
