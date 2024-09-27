// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bon_appetit/controllers/dashboard_controller.dart';
import 'package:bon_appetit/pages/menu/home_menu.dart';
import 'package:bon_appetit/pages/menu/favorite_menu.dart';
import 'package:bon_appetit/pages/menu/recipe_menu.dart';
import 'package:bon_appetit/pages/menu/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = 
      Get.find();

    final List<Widget> menus = [HomeMenu(), RecipeMenu(), FavoriteMenu(), ProfileMenu()];
    
    return Obx(() {
       return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: dashboardController.selectedIndex.value,
          onTap: dashboardController.changeMenu,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label:"home"),
            BottomNavigationBarItem(icon: Icon(Icons.library_books), label:"Recipe"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_border_outlined), label:"Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label:"profile"),
          ]),
     );
    });
  }
}