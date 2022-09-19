import 'package:flutter/material.dart';

class nav_simple_location extends StatelessWidget {
  nav_simple_location({
    this.distance,
    this.money,
    this.rating,
    this.onTap,
    this.title,
    Key? key,
  }) : super(key: key);

  String? title;
  Function()? onTap;
  String? distance;
  String? money;
  String? rating;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on,
                  size: 24.0,
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      distance!,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Delivery Now  |",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        const Icon(
                          Icons.motorcycle,
                          size: 24.0,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          money!,
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
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
