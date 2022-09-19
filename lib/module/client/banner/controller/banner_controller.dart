import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/banner_view.dart';
import 'package:flutter/material.dart';

class BannerController extends ChangeNotifier implements HyperController {
  BannerView? view;

  List listBanner = [
    {
      "color1": Colors.orange,
      "color2": Colors.orangeAccent,
      "image": "assets/image/food-menu-burger.png"
    },
    {
      "color1": Colors.green,
      "color2": Colors.greenAccent,
      "image": "assets/image/noodle-banner.png"
    },
    {
      "color1": Colors.blue,
      "color2": Colors.blueAccent,
      "image": "assets/image/ramen-banner.png"
    },
    {
      "color1": Colors.teal,
      "color2": Colors.tealAccent,
      "image": "assets/image/tomyam-banner.png"
    },
    {
      "color1": Colors.pink,
      "color2": Colors.pinkAccent,
      "image": "assets/image/vegetable-banner.png"
    },
  ];
}

final bannerController = ChangeNotifierProvider<BannerController>((ref) {
  return BannerController();
});
