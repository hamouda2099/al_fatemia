import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../config/constants.dart';

class ProductsMobile extends StatelessWidget {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/products_back.png"),
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
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Our Products".tr(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
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
                                color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30, top: 20),
                            child: Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                              maxLines: 5,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
                                color: Colors.white, fontSize: 30),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 80.0, right: 80, top: 20),
                            child: Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                              maxLines: 5,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
                                color: Colors.white, fontSize: 30),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 80.0, right: 80, top: 20),
                            child: Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                              maxLines: 5,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
                                color: Colors.white, fontSize: 30),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 80.0, right: 80, top: 20),
                            child: Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                              maxLines: 5,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
