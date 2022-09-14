import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/dasboard_view.dart';

class DasboardController extends ChangeNotifier implements HyperController {
  DasboardView? view;
  int selectedIndex = 0;

  void refrest() {
    notifyListeners();
  }
}

final dasboardController = ChangeNotifierProvider<DasboardController>((ref) {
  return DasboardController();
});
