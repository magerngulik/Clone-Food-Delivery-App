import 'package:flutter/material.dart';
import 'package:clone_ui_food_dellivery/setup.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './riverpod_util.dart';
import './module/client/dasboard/view/dasboard_view.dart';

void main() async {
  await initialize();

  Widget mainView = const DasboardView();

  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.navigatorKey,
        home: mainView,
      ),
    ),
  );
}
