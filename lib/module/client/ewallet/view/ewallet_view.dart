import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/ewallet_controller.dart';

class EwalletView extends ConsumerWidget {
  const EwalletView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    EwalletController controller = ref.watch(ewalletController);
    controller.view = this;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ewallet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }
}