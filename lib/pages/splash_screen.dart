import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Get.offNamed('/getstartedpage'); 
      });
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 250, 245),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/bonapetit.png',
              width: 190,
              height: 190,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
