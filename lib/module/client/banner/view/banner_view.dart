import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/banner_controller.dart';

class BannerView extends ConsumerWidget {
  const BannerView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    BannerController controller = ref.watch(bannerController);
    controller.view = this;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Banner'),
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