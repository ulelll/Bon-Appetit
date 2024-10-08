//import 'package:bon_appetit/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/splash_screen.dart';
import 'pages/login_page.dart';
import 'pages/getstarted_page.dart';
import 'pages/signup_page.dart';
import 'bindings/bindings.dart';
import 'package:bon_appetit/pages/dashboard_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Splash Screen to Login',
      initialRoute: '/',  
      getPages: [
      GetPage(name: '/', page: () => const SplashScreen()),
      GetPage(name: '/getstartedpage', page: () => GetstartedPage()),
      GetPage(name: '/signuppage', page: () => SignupPage()),
      GetPage(name: '/loginpage', page: () => LoginPage()),
      GetPage(name: '/dashboard', page: () => DashboardPage(), 
      binding: MyBindings()
        ),
      ],
    );
  }
}
