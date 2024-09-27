//import 'package:bottomnav_getx/controllers/dashboard_controller.dart';
//import 'package:bottomnav_getx/pages/menu/home_menu.dart';
import 'package:bon_appetit/pages/menu/home_menu.dart';
import 'package:bon_appetit/pages/menu/favorite_menu.dart';
import 'package:bon_appetit/pages/menu/recipe_menu.dart';
import 'package:bon_appetit/pages/menu/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardNavDrawer extends StatelessWidget {
  const DashboardNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    
    final DashboardController dashboardController = 
      Get.put(DashboardController());

    final List<Widget> menus = [HomeMenu(),  RecipeMenu(), FavoriteMenu(), ProfileMenu()]; //belum di isi

    return Obx((){
      return Scaffold(
        appBar: AppBar(title: Text("navigatian example "),),
        body: menus[dashboardController.selectedIndex.value],
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(decoration: BoxDecoration(color: Color.fromARGB(255, 250, 131, 171)), 
              child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 20), 
              )),

              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text("Home"),
                onTap: () {
                  dashboardController.changeMenu(0);
                  Navigator.pop(context);
                },
              ),

               ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text("Recipe"),
                onTap: () {
                  dashboardController.changeMenu(0);
                  Navigator.pop(context);
                },
              ),

               ListTile(
                leading: Icon(Icons.money),
                title: Text("Favorite"),
                onTap: () {
                  dashboardController.changeMenu(1);
                  Navigator.pop(context);
                },
              ),

               ListTile(
                leading: Icon(Icons.people_outlined),
                title: Text("profile"),
                onTap: () {
                  dashboardController.changeMenu(2);
                  Navigator.pop(context);
                },
              )
            ],
          )

        )
      );
    });
  }
}