import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed('/loginpage'); 
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 251, 242),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset('assets/images/bonapetit.png',
              width: 190,  
              height: 190
           ),
            const SizedBox(height: 15),
            // const Text(
            //   'Welcome to My App',
            //   style: TextStyle(fontSize: 24, color: Colors.white),
            // ),
          ],
        ),
      ),
    );
  }
}
