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
    final DashboardController dashboardController = Get.find();

    final List<Widget> menus = [
      const HomeMenu(),
      const RecipeMenu(),
      const FavoriteMenu(),
      const ProfileMenu(),
    ];

    return Obx(() {
      return Scaffold(
        
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: Container(          
          decoration: BoxDecoration(
            color: Colors.purple[700],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
           ],
          ),
          
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 116, 35, 145), 
            selectedItemColor: const Color.fromARGB(255, 62, 31, 75), 
            unselectedItemColor: const Color.fromARGB(255, 88, 22, 117), 
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: "Recipe",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border_outlined),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "Profile",
              ),
            ],
          ),
        ),
        ),
      );
    });
  }
}
