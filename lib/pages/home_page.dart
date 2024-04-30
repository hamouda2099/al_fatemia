import 'package:alfatemia_engines/pages/contact_us_page.dart';
import 'package:alfatemia_engines/pages/image_viewer_dialog.dart';
import 'package:alfatemia_engines/pages/products_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
          body: Stack(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 1.1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/male-worker-factory.jpg"),
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
                        padding: const EdgeInsets.only(left: 80, right: 80),
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
                                          duration: const Duration(seconds: 1),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      "Your Trusted Supplier for Engines".tr(),
                                      style: const TextStyle(
                                          color: kPrimaryColor, fontSize: 45),
                                    ),
                                  ],
                                ),
                                CustomHoverButton(
                                    title: "Explore Now".tr(),
                                    height: 60,
                                    borderColor: kPrimaryColor,
                                    function: () {
                                      scrollController.animateTo(5250,
                                          duration: const Duration(seconds: 1),
                                          curve: Curves.ease);
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
                              children: [
                                Container(
                                  width: screenWidth / 2,
                                  height: screenHeight / 1.2,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/stand_motor_1.png"))),
                                ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Text(
                                      "Stand Motors".tr(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 80.0, right: 80, top: 20),
                                      child: Text(
                                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                        maxLines: 5,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    Text(
                                      "Hood Motors".tr(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 80.0, right: 80, top: 20),
                                      child: Text(
                                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                        maxLines: 5,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                )),
                                Container(
                                  width: screenWidth / 2,
                                  height: screenHeight / 1.2,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/hood_motor_1.png"))),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: screenWidth / 2,
                                  height: screenHeight / 1.2,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/ceiling_motor_1.png"))),
                                ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Text(
                                      "Ceiling Motors".tr(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 80.0, right: 80, top: 20),
                                      child: Text(
                                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                        maxLines: 5,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    Text(
                                      "Blender Motors".tr(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 80.0, right: 80, top: 20),
                                      child: Text(
                                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                        maxLines: 5,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                )),
                                Container(
                                  width: screenWidth / 2,
                                  height: screenHeight / 1.2,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/blinder_motor_1.png"))),
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
                              "Our Products".tr(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            const SizedBox(
                              height: 15,
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
                              "Our Companies".tr(),
                              style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "El-Ula Plass".tr(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "El-Ulaa Plus for Wholesale Products Trading"
                                          .tr(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
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
