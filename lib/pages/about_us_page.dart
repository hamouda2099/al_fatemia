import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import '../components/app_bar.dart';
import '../components/app_bar_hover_button.dart';
import '../components/fade_image.dart';
import '../components/footer.dart';
import '../config/constants.dart';
import '../config/navigator.dart';

class AboutUsScreen extends StatelessWidget {
  static const String id = '/about';
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
                      Column(
                        children: [
                          Container(
                            width: screenWidth,
                            height: screenHeight / 1.5,
                            padding: const EdgeInsets.only(left: 80, right: 80),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "About Us".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Your Trusted Supplier for Engines".tr(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 45),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            width: screenWidth,
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                const SizedBox(
                                  height: 80,
                                ),
                                SizedBox(
                                  width: screenWidth / 1.5,
                                  child: Text(
                                    "abstract".tr(),
                                    maxLines: 5,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 80,
                                ),
                                 Footer(),
                                const SizedBox(
                                  height: 80,
                                ),
                              ],
                            ),
                          )
                        ],
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
