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
                                  "About Us".tr(),
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
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: screenWidth,
                          height: screenHeight / 1.5,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/male-worker-factory.jpg"))),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        SizedBox(
                          width: screenWidth / 2,
                          child: Text(
                            "Al Fatmiya Engines is the leading engine supplier in the Middle East and has a proud history of delivering excellence since its inception. We are committed to providing superior quality engine products and services, backed by our unwavering commitment to customer satisfaction and industry expertise."
                                .tr(),
                            maxLines: 5,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
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
