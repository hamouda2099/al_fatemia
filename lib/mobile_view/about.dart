import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../components/footer.dart';
import '../config/constants.dart';

class AboutMobile extends StatelessWidget {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight/3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/products_back.png"),
            ),
          ),
          child: Container(
            width: screenWidth,
            height: screenHeight/3,
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
                      height: screenHeight /5,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "About Us".tr(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "Your Trusted Supplier for Engines".tr(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 22),
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
                          SizedBox(
                            width: screenWidth / 1.2,
                            child: Text(
                              "abstract".tr(),
                              maxLines: 5,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          Footer(),
                          const SizedBox(
                            height: 20,
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
    );
  }
}
