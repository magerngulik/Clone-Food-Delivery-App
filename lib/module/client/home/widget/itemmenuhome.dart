import 'package:flutter/material.dart';

class menuitemhome extends StatelessWidget {
  menuitemhome({
    this.icon,
    this.name,
    this.fontSize,
    Key? key,
  }) : super(key: key);

  String? icon;
  String? name;
  double? fontSize = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icon!,
          width: 50.0,
          height: 50.0,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          name!,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
