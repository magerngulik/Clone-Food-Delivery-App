import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/detailitem_view.dart';

class DetailitemController extends ChangeNotifier implements HyperController {
  DetailitemView? view;
}

final detailitemController =
    ChangeNotifierProvider<DetailitemController>((ref) {
  return DetailitemController();
});