import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/banner_view.dart';

class BannerController extends ChangeNotifier implements HyperController {
  BannerView? view;
  
}

final bannerController =
    ChangeNotifierProvider<BannerController>((ref) {
  return BannerController();
});