import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/message_view.dart';

class MessageController extends ChangeNotifier implements HyperController {
  MessageView? view;
}

final messageController =
    ChangeNotifierProvider<MessageController>((ref) {
  return MessageController();
});