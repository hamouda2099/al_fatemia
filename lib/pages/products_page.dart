import 'package:alfatemia_engines/mobile_view/products.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import '../components/app_bar.dart';
import '../components/app_bar_hover_button.dart';
import '../components/fade_image.dart';
import '../components/footer.dart';
import '../config/constants.dart';
import '../config/navigator.dart';

class ProductsScreen extends StatelessWidget {
  static const String id = '/products';
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
          body: mobileView ? ProductsMobile() : Stack(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 1.1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/products_back.png"),
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
                                          fontSize: 30),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 100,
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
                                              color: Colors.white, fontSize: 30),
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
                                                color: Colors.white, fontSize: 16),
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
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
