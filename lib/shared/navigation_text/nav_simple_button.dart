import 'package:flutter/material.dart';

class nv_simple_text extends StatelessWidget {
  nv_simple_text({
    this.onTap,
    this.title,
    Key? key,
  }) : super(key: key);

  String? title;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap!,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 28.0,
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
