import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          header(),
          SizedBox(
            height: 8,
          ),
          Container(height: 105, child: ListView())
        ],
      )),
    );
  }

  Stack profileHikayeEkle() {
    return Stack(children: [
      ClipOval(
          child: Image.asset(
        "assets/images/profilePhoto.png",
        width: 60,
        height: 60,
      )),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF1FA1FF),
              borderRadius: BorderRadius.circular(100)),
          child: Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }

  Column storyKutusu() {
    return Column(children: [
      Stack(alignment: Alignment.center, children: [
        ClipOval(
          child: Image.asset(
            "assets/images/story1.png",
            width: 60,
            height: 60,
          ),
        ),
        SvgPicture.asset(
          "assets/icons/Story_ring.svg",
          width: 72,
          height: 72,
        )
      ]),
      Text(
        "sabanok...",
        style: TextStyle(
            fontSize: 11.5, fontWeight: FontWeight.w400, fontFamily: "SfUi"),
      )
    ]);
  }

  Padding header() {
    return Padding(
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
    );
  }
}




 // Stack(
          //   children: [
          //     Text("data"),
          //     Positioned(
          //       child: Text("sdsadsa"),
          //       left: -10,
          //       bottom: 10,
          //     ),
          //     Text("data"),
          //     Text("data"),
          //     Text("data"),
          //     Text("data")
          //   ],
          // )