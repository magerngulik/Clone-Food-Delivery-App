import 'package:flutter/material.dart';

class nav_simple_icon_text extends StatelessWidget {
  nav_simple_icon_text({
    this.titlefz,
    this.iconSts,
    this.onTap,
    this.title,
    this.selectIcon,
    Key? key,
  }) : super(key: key);

  String? title;
  Function()? onTap;
  IconData? iconSts;
  double? titlefz;
  Color? selectIcon;

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
                Icon(
                  iconSts ?? Icons.star,
                  size: 24.0,
                  color: selectIcon!,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: titlefz! ?? 20,
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
