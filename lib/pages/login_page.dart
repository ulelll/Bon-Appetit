import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(          
          children: [
            const Text("Press to move to another page"),
            ElevatedButton(
              onPressed: () {

                Get.toNamed('/dashboard');
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
