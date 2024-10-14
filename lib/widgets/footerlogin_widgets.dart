import 'package:flutter/material.dart';
import 'package:get/get.dart';

//login

class LoginFooter extends StatelessWidget {
  final String text; 
  final String buttonText; 
  final String route; 

  const LoginFooter({
    Key? key,
    required this.text,
    required this.buttonText,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/signuppage');
            },
            child: Text(
              buttonText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 255, 224, 111),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
