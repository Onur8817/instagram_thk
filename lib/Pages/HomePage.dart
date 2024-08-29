import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sayac = 0;
  List storiler = [
    {"isim": "sabanok...", "profileImagePath": "assets/images/story1.png"},
    {"isim": "blue_bouy", "profileImagePath": "assets/images/story2.png"},
    {"isim": "waggles", "profileImagePath": "assets/images/story3.png"},
    {"isim": "steve.loves", "profileImagePath": "assets/images/story4.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/home.svg"),
                label: "Ana Sayfa"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/search.svg"), label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/video.svg"), label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/market.svg"), label: ""),
            BottomNavigationBarItem(
                icon: ClipOval(
                  child: Image.asset(
                    "assets/images/profilePhoto.png",
                    width: 24,
                    height: 24,
                  ),
                ),
                label: "")
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            SizedBox(
              height: 8,
            ),
            storyBolumu(),
            SizedBox(
              height: 7,
            ),
            post(),
            post()

            // Row(children: [
            //   Expanded(
            //       child: Container(
            //     height: 2,
            //     color: Colors.grey.shade100,
            //   )),
            // ])
          ],
        ),
      )),
    );
  }

  Widget post() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12, right: 13, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/profilePhoto.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/Story_ring.svg",
                        width: 36,
                        height: 36,
                      )
                    ]),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ruffles",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "SfUi",
                              fontWeight: FontWeight.w700),
                        ),
                        Text("Sponsored",
                            style: TextStyle(
                                fontSize: 11,
                                fontFamily: "SfUi",
                                fontWeight: FontWeight.w400))
                      ],
                    )
                  ],
                ),
                Icon(Icons.more_horiz_outlined),
              ],
            ),
          ),
          Image.asset("assets/images/pos1.jpg"),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 13, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Color(0xFFFE0135),
                      size: 24,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset("assets/icons/message.svg"),
                    SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset("assets/icons/share.svg")
                  ],
                ),
                SvgPicture.asset(
                  "assets/icons/kaydet.svg",
                  width: 24,
                  height: 24,
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "100 Likes",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontFamily: "SfUi"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Username",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: "SfUi")),
                          TextSpan(
                              text:
                                  ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt...',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontFamily: "SfUi")),
                          TextSpan(
                              text: ' more',
                              style: TextStyle(
                                  color: Color(0xFF6E6E6E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "View all 16 comments",
                    style: TextStyle(
                        color: Color(0xFF6E6E6E),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: "SfUi"),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Padding storyBolumu() {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Container(
          height: 105,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                child: Row(
                  children: [
                    profileHikayeEkle(),
                    SizedBox(
                      width: 20,
                    ),
                    for (var story in storiler)
                      storyKutusu(
                          imagePath: story["profileImagePath"],
                          name: story["isim"])
                  ],
                ),
              )
            ],
          )),
    );
  }

  Column profileHikayeEkle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(children: [
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
        ]),
        Text(
          "Ruffles",
          style: TextStyle(
              fontFamily: "SfUi",
              fontSize: 11.5,
              fontWeight: FontWeight.w400,
              color: Color(0xFF6E6E6E)),
        )
      ],
    );
  }

  Widget storyKutusu({required String imagePath, required String name}) {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Stack(alignment: Alignment.center, children: [
          ClipOval(
            child: Image.asset(
              imagePath,
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
          name,
          style: TextStyle(
              fontSize: 11.5, fontWeight: FontWeight.w400, fontFamily: "SfUi"),
        )
      ]),
    );
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