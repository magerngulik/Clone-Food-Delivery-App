import 'package:flutter/material.dart';

class CategorieListTittleBanner extends StatelessWidget {
  CategorieListTittleBanner({
    this.titleBanner,
    this.onClik,
    Key? key,
  }) : super(key: key);

  String? titleBanner;
  Function()? onClik;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${titleBanner}",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: onClik,
            child: Text(
              "See All",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
