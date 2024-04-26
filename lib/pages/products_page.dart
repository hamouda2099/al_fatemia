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
          body: Scrollbar(
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
                                  "The Future with Al-Fatemia".tr(),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Your Trusted Supplier for Engines".tr(),
                                  style: const TextStyle(
                                      color: kPrimaryColor, fontSize: 45),
                                ),
                                SizedBox(
                                  width: screenWidth / 1.5,
                                  child: const Text(
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
                          height: 50,
                        ),
                        Row(
                          children: [
                            Container(
                              width: screenWidth / 2,
                              height: screenHeight / 1.2,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "Stand Motors".tr(),
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
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                              ),
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
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                              ),
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
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  const Footer()
                ],
              ),
            ),
          )),
    );
  }
}
