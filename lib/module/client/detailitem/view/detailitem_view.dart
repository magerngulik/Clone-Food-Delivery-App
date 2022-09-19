import 'package:clone_ui_food_dellivery/shared/navigation_text/nav_simple_icon_text.dart';
import 'package:clone_ui_food_dellivery/shared/navigation_text/nav_simple_location.dart';
import 'package:clone_ui_food_dellivery/shared/navigation_text/nav_simple_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/navigation_text/nav_simple_button.dart';
import '../controller/detailitem_controller.dart';

class DetailitemView extends ConsumerWidget {
  DetailitemView({this.item, Key? key}) : super(key: key);

  Map? item;
  @override
  Widget build(context, ref) {
    DetailitemController controller = ref.watch(detailitemController);
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.send,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    item!['icon'],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            nv_simple_text(
              onTap: (() {}),
              title: "Big Garden Salad",
            ),
            nav_simple_rating(
              onTap: (() {}),
              title: "4.8",
              subtitle: "(4.8k Riview)",
            ),
            nav_simple_location(
              onTap: (() {}),
              title: "ex",
              money: "Rp. 20.000",
              distance: "24 Km",
            ),
            nav_simple_icon_text(
              onTap: () {},
              iconSts: Icons.discount,
              title: "Offers are availavle",
              titlefz: 15,
              selectIcon: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
