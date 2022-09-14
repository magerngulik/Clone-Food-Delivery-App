import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/orders_view.dart';

class OrdersController extends ChangeNotifier implements HyperController {
  OrdersView? view;
}

final ordersController =
    ChangeNotifierProvider<OrdersController>((ref) {
  return OrdersController();
});