import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/app_bar.dart';
import '../components/app_bar_hover_button.dart';
import '../components/fade_image.dart';
import '../components/footer.dart';
import '../config/constants.dart';
import '../config/navigator.dart';
import '../pages/contact_us_page.dart';

class HomeMobile extends StatelessWidget {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight/2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/male-worker-factory.jpg"),
            ),
          ),
          child: Container(
            width: screenWidth,
            height: screenHeight/2,
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
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Al-Fatemia Engines".tr(),
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "The first and only supplier for engines in middle east."
                            .tr(),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Egyption Hands 100%".tr(),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomHoverButton(
                              title: "Contact Us".tr(),
                              borderColor: Colors.white,
                              height: 40,
                              width: screenWidth/4,
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
                              height: 40,
                              width: screenWidth/4,
                              function: () {
                                scrollController.animateTo(400,
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
                  height: screenHeight / 20,
                ),
                Container(
                  width: screenWidth,
                  color: Colors.white,
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
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
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Your Trusted Supplier for Engines".tr(),
                                style: const TextStyle(
                                    color: kPrimaryColor, fontSize: 20),
                              ),
                            ],
                          ),
                          CustomHoverButton(
                              title: "Explore Now".tr(),
                              height: 40,
                              width: screenWidth/4,
                              borderColor: kPrimaryColor,
                              function: () {
                                scrollController.animateTo(2450,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.ease);
                              },
                              color: kPrimaryColor,
                              hoverTextColor: kPrimaryColor,
                              hoverColor: Colors.white),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: screenWidth / 2,
                            height: screenHeight / 2,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "assets/images/stand_motor_1.png"))),
                          ),
                          Column(
                            children: [
                              Text(
                                "Stand Motors".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 40.0, right: 40, top: 10),
                                child: Text(
                                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: screenWidth / 2,
                            height: screenHeight / 2,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "assets/images/hood_motor_1.png"))),
                          ),
                          Column(
                            children: [
                              Text(
                                "Hood Motors".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 40.0, right: 40, top: 20),
                                child: Text(
                                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: screenWidth / 2,
                            height: screenHeight / 2,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "assets/images/ceiling_motor_1.png"))),
                          ),
                          Column(
                            children: [
                              Text(
                                "Ceiling Motors".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 40.0, right: 40, top: 20),
                                child: Text(
                                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: screenWidth / 2,
                            height: screenHeight / 2,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "assets/images/blinder_motor_1.png"))),
                          ),
                          Column(
                            children: [
                              Text(
                                "Blender Motors".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 40.0, right: 40, top: 20),
                                child: Text(
                                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight / 3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/about_back.jpg"))),
                  child: Container(
                    width: screenWidth,
                    height: screenHeight / 3,
                    padding: const EdgeInsets.all(10),
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Us".tr(),
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "The Trusted Supplier for engines".tr(),
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: screenWidth / 1.2,
                          child: Text(
                            "abstract".tr(),
                            maxLines: 10,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 12,
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
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Our Products".tr(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Explore our engines power.".tr(),
                        style: const TextStyle(
                            color: kPrimaryColor, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
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

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

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
                        height: 50,
                      ),
                      Text(
                        "Our Companies".tr(),
                        style: const TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
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
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "El-Ulaa Plus for Wholesale Products Trading"
                                        .tr(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: screenWidth / 4,
                            height: screenHeight / 4,
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
    );
  }
}
