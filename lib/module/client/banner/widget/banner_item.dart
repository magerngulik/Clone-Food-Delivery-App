import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerItem extends StatelessWidget {
  BannerItem({
    this.color1,
    this.color2,
    this.image,
    Key? key,
  }) : super(key: key);
  String? image;
  Color? color1;
  Color? color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [color1!, color2!],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("30%",
                    style: GoogleFonts.montserrat(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  "Discound Only",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Valid for today",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                image!,
                height: 120,
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
