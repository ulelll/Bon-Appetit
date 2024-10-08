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
            text: 'Hi there! \nCreate your new account',
          ),
          FormContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextfieldWidgets(
                  label: 'Email',
                  suffixIcon: Icons.check,
                ),
                const SizedBox(height: 20),
                const TextfieldWidgets(
                  label: 'Phone number',
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
