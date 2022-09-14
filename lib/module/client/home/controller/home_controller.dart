import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/home_view.dart';

class HomeController extends ChangeNotifier implements HyperController {
  HomeView? view;
  List menuCategories = [
    {"name": "Hamburgers", "icon": "assets/icon/hamburger.png"},
    {"name": "Pizza", "icon": "assets/icon/pizza.png"},
    {"name": "Noodles", "icon": "assets/icon/ramen.png"},
    {"name": "Meat", "icon": "assets/icon/meat.png"},
    {"name": "Vegetable", "icon": "assets/icon/broccoli.png"},
    {"name": "Dessert", "icon": "assets/icon/cake-slice.png"},
    {"name": "Drink", "icon": "assets/icon/beer.png"},
    {"name": "More", "icon": "assets/icon/cheesecake.png"},
  ];
  List menuDiscont = [
    {
      "name": "Salad 1",
      "icon":
          "https://images.unsplash.com/photo-1572449043416-55f4685c9bb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"
    },
    {
      "name": "Salad 2",
      "icon":
          "https://images.unsplash.com/photo-1604497181015-76590d828b75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"
    },
    {
      "name": "Salad 3",
      "icon":
          "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"
    },
    {
      "name": "Salad 4",
      "icon":
          "https://images.unsplash.com/photo-1607532941433-304659e8198a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1078&q=80"
    },
  ];
}

final homeController = ChangeNotifierProvider<HomeController>((ref) {
  return HomeController();
});
