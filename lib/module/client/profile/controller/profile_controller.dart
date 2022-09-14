import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/profile_view.dart';

class ProfileController extends ChangeNotifier implements HyperController {
  ProfileView? view;
}

final profileController =
    ChangeNotifierProvider<ProfileController>((ref) {
  return ProfileController();
});