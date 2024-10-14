import 'package:bon_appetit/controllers/dashboard_controller.dart';
import 'package:bon_appetit/pages/menu/home_menu.dart';
import 'package:bon_appetit/pages/menu/favorite_menu.dart';
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
     // const RecipeMenu(),
      const FavoriteMenu(),
      const ProfileMenu(),
    ];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: Container(          
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 89, 21, 118),
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
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 77, 18, 92), 
            selectedItemColor: const Color.fromARGB(255, 255, 255, 255), 
            unselectedItemColor: const Color.fromARGB(255, 48, 15, 62), 
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorite",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_rounded),
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
