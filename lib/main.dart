import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/splash_screen.dart';
import 'pages/login_page.dart';
import 'pages/get_started_page.dart';
import 'pages/signup_page.dart';
import 'bindings/bindings.dart';
import 'pages/recipe_page.dart';
import 'pages/dashboard_page.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bon Appetit', 
      initialRoute: '/',    
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/getstartedpage', page: () => GetStartedPage()),
        GetPage(name: '/signuppage', page: () => SignupPage()),
        GetPage(name: '/loginpage', page: () => LoginPage()),
        GetPage(name: '/recipepage', page: () => RecipePage()), 
        GetPage(
          name: '/dashboard',
          page: () => const DashboardPage(),
          binding: MyBindings(),  
        ),
      ],
    );
  }
}
