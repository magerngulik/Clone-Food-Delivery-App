import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/ewallet_view.dart';

class EwalletController extends ChangeNotifier implements HyperController {
  EwalletView? view;
}

final ewalletController =
    ChangeNotifierProvider<EwalletController>((ref) {
  return EwalletController();
});