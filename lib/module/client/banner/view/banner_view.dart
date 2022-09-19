import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/banner_controller.dart';
import '../widget/banner_item.dart';

class BannerView extends ConsumerWidget {
  const BannerView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    BannerController controller = ref.watch(bannerController);
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Special Offers',
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: controller.listBanner.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var item = controller.listBanner[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: BannerItem(
                        color1: item['color1'],
                        color2: item['color2'],
                        image: item['image'],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
