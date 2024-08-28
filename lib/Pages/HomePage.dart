import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13, right: 13, top: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 104,
                      height: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 16,
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/kalp.svg",
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    SvgPicture.asset(
                      "assets/icons/mesaj.svg",
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    SvgPicture.asset(
                      "assets/icons/arti.svg",
                      width: 24,
                      height: 24,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
