import 'dart:ui';

import 'package:alfatemia_engines/mobile_view/home.dart';
import 'package:alfatemia_engines/pages/contact_us_page.dart';
import 'package:alfatemia_engines/pages/image_viewer_dialog.dart';
import 'package:alfatemia_engines/pages/products_page.dart';
import 'package:alfatemia_engines/pages/video_player_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hovering/hovering.dart';
import '../components/app_bar.dart';
import '../components/app_bar_hover_button.dart';
import '../components/fade_image.dart';
import '../components/footer.dart';
import '../config/constants.dart';
import '../config/navigator.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/home';
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    back() {
      navigator(
        context: context,
        isBack: true,
      );
    }

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth > 800) {
      mobileView = false;
    } else {
      mobileView = true;
    }
    return WillPopScope(
      onWillPop: () async {
        back();
        return false;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: mobileView
              ? HomeMobile()
              : Stack(
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight * 1.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/male-worker-factory.jpg"),
                        ),
                      ),
                      child: Container(
                        width: screenWidth,
                        height: screenHeight,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Scrollbar(
                      controller: scrollController,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: CustomAppBar(),
                            ),
                            Container(
                              width: screenWidth,
                              height: screenHeight / 1.5,
                              padding:
                                  const EdgeInsets.only(left: 80, right: 80),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Al-Fatemia Engines".tr(),
                                    style: const TextStyle(
                                        fontSize: 60,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: screenWidth / 2,
                                  ),
                                  Text(
                                    "The first and only supplier for engines in middle east."
                                        .tr(),
                                    style: const TextStyle(
                                      fontSize: 45,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Egyption Hands 100%".tr(),
                                    style: const TextStyle(
                                      fontSize: 45,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomHoverButton(
                                          title: "Contact Us".tr(),
                                          borderColor: Colors.white,
                                          height: 60,
                                          function: () {
                                            navigator(
                                                context: context,
                                                route: ContactUsScreen.id);
                                          },
                                          color: Colors.transparent,
                                          hoverTextColor: Colors.black,
                                          hoverColor: Colors.white),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      CustomHoverButton(
                                          title: "Lets Go".tr(),
                                          height: 60,
                                          function: () {
                                            scrollController.animateTo(1000,
                                                duration:
                                                    const Duration(seconds: 1),
                                                curve: Curves.ease);
                                          },
                                          color: kPrimaryColor,
                                          hoverTextColor: Colors.black,
                                          hoverColor: Colors.white)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight / 5,
                            ),
                            Container(
                              width: screenWidth,
                              color: Colors.white,
                              padding: const EdgeInsets.all(80),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "The Future with Al-Fatemia".tr(),
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "Your Trusted Supplier for Engines"
                                                .tr(),
                                            style: const TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 45),
                                          ),
                                        ],
                                      ),
                                      CustomHoverButton(
                                          title: "Explore Now".tr(),
                                          height: 60,
                                          borderColor: kPrimaryColor,
                                          function: () {
                                            playVideoFromUrl(context,
                                                url:
                                                    "https://www.youtube.com/embed/NbXLKWtDlSg");
                                            // scrollController.animateTo(5250,
                                            //     duration: const Duration(seconds: 1),
                                            //     curve: Curves.ease);
                                          },
                                          color: kPrimaryColor,
                                          hoverTextColor: kPrimaryColor,
                                          hoverColor: Colors.white),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              playVideoFromUrl(context,
                                                  url:
                                                      "https://www.youtube.com/embed/NbXLKWtDlSg");
                                            },
                                            child: Container(
                                              width: screenWidth / 5,
                                              height: 300,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          "assets/images/video_1.png"))),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.4),
                                                width: screenWidth / 5,
                                                height: 300,
                                                child: Icon(
                                                  Icons.play_arrow,
                                                  color: kPrimaryColor,
                                                  size: 100,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: screenWidth / 5,
                                            child: const Text(
                                              "شوف دلوقت موتور الفاطمية المصري بكل مكوناته مع التفاصيل بضمان الجودة ودقة الإتقان",
                                              maxLines: 3,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              playVideoFromUrl(context,
                                                  url:
                                                      "https://www.youtube.com/embed/SYPr4gozW10");
                                            },
                                            child: Container(
                                              width: screenWidth / 5,
                                              height: 300,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          "assets/images/video_2.png"))),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.4),
                                                width: screenWidth / 5,
                                                height: 300,
                                                child: Icon(
                                                  Icons.play_arrow,
                                                  color: kPrimaryColor,
                                                  size: 100,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: screenWidth / 5,
                                            child: const Text(
                                              "كفاءة تصنيع موتور المروحة المصري بأقوى الخامات بيور 100%",
                                              maxLines: 3,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              playVideoFromUrl(context,
                                                  url:
                                                      "https://www.youtube.com/embed/87QquNnPwUY");
                                            },
                                            child: Container(
                                              width: screenWidth / 5,
                                              height: 300,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          "assets/images/video_3.png"))),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.4),
                                                width: screenWidth / 5,
                                                height: 300,
                                                child: Icon(
                                                  Icons.play_arrow,
                                                  color: kPrimaryColor,
                                                  size: 100,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: screenWidth / 5,
                                            child: const Text(
                                              "لأول مرة في مصر موتور مروحة صناعة مصرية 100% بخط الإنتاج كامل وعمالة محلية",
                                              maxLines: 3,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              playVideoFromUrl(context,
                                                  url:
                                                      "https://www.youtube.com/embed/KsEnmtKttzo");
                                            },
                                            child: Container(
                                              width: screenWidth / 5,
                                              height: 300,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          "assets/images/video_4.png"))),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.4),
                                                width: screenWidth / 5,
                                                height: 300,
                                                child: Icon(
                                                  Icons.play_arrow,
                                                  color: kPrimaryColor,
                                                  size: 100,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: screenWidth / 5,
                                            child: const Text(
                                              "مصنع الفاطمية للمحركات مصنع الموتور المصري",
                                              maxLines: 3,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth,
                              height: screenHeight / 1.5,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/about_back.jpg"))),
                              child: Container(
                                width: screenWidth,
                                height: screenHeight / 1.5,
                                padding: const EdgeInsets.all(80),
                                color: Colors.black.withOpacity(0.5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "About Us".tr(),
                                      style: const TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "The Trusted Supplier for engines".tr(),
                                      style: const TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: screenWidth / 2,
                                      child: Text(
                                        "abstract".tr(),
                                        maxLines: 5,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: kPrimaryColor,
                              width: screenWidth,
                              padding: EdgeInsets.all(80),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Social Media Events".tr(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(5, (index) => InkWell(
                                      onTap: (){
                                        ImageViewer().show(context,image: "assets/images/post_${index + 1}.jpg");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                          "assets/images/post_${index + 1}.jpg",width: screenWidth/7,height: screenWidth/7,),
                                      ),
                                    )),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: List.generate(5, (index) => InkWell(
                                      onTap: (){
                                        ImageViewer().show(context,image: "assets/images/post_${index + 6}.jpg");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                          "assets/images/post_${index + 6}.jpg",width: screenWidth/7,height: screenWidth/7,),
                                      ),
                                    )),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: List.generate(5, (index) => InkWell(
                                      onTap: (){
                                        ImageViewer().show(context,image: "assets/images/post_${index + 11}.jpg");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                          "assets/images/post_${index + 11}.jpg",width: screenWidth/7,height: screenWidth/7,),
                                      ),
                                    )),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: List.generate(5, (index) => InkWell(
                                      onTap: (){
                                        ImageViewer().show(context,image: "assets/images/post_${index + 16}.jpg");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          child: Image.asset(
                                            "assets/images/post_${index + 16}.jpg",width: screenWidth/7,height: screenWidth/7,),
                                        ),
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: screenWidth,
                              color: Colors.white,
                              padding: const EdgeInsets.all(80),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Explore our engines power.".tr(),
                                    style: const TextStyle(
                                        color: kPrimaryColor, fontSize: 45),
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FadeImage(
                                        title: "Stand Motor (S01)".tr(),
                                        assetImageUrl:
                                            "assets/images/stand_motor_1.png",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      FadeImage(
                                        title: "Hood Motor (H01)".tr(),
                                        assetImageUrl:
                                            "assets/images/hood_motor_1.png",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      FadeImage(
                                        title: "Ceiling Motor(C01)".tr(),
                                        assetImageUrl:
                                            "assets/images/ceiling_motor_1.png",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      FadeImage(
                                        title: "Blinder Motor (B02)".tr(),
                                        assetImageUrl:
                                            "assets/images/blinder_motor_1.png",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  Text(
                                    "Our Branches".tr(),
                                    style: const TextStyle(
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "El-Ula Plass".tr(),
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            "El-Ulaa Plus for Wholesale Products Trading"
                                                .tr(),
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Headquarters in Dubai"
                                                          .tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Dubai deira , DBC building, office No.114"
                                                          .tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "10th of Ramadan ,3rd industrial zone, plot No 1/5/31"
                                                          .tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Contact".tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "+971543557055".tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                    Text(
                                                      "+971583883825".tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                    Text(
                                                      "+97144487033".tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Socials".tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Facebook".tr(),
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Instagram".tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                    Text(
                                                      "Tiktok".tr(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        width: screenWidth / 4,
                                        height: screenHeight / 2.2,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    "assets/images/ola_logo.jpg"))),
                                      ),
                                    ],
                                  ),
                                  Footer()
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
    );
  }
}
