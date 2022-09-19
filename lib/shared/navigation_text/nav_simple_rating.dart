import 'package:flutter/material.dart';

class nav_simple_rating extends StatelessWidget {
  nav_simple_rating({
    this.subtitle,
    this.onTap,
    this.title,
    Key? key,
  }) : super(key: key);

  String? title;
  Function()? onTap;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.star,
                  size: 24.0,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  subtitle!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
