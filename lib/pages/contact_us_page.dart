import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/app_bar.dart';
import '../components/app_bar_hover_button.dart';
import '../components/footer.dart';
import '../config/constants.dart';
import '../config/navigator.dart';

class ContactUsScreen extends StatelessWidget {
  static const String id = '/contact';
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
                                  "Get in Touch".tr(),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Have Any Questions ?".tr(),
                                  style: const TextStyle(
                                      color: kPrimaryColor, fontSize: 45),
                                ),
                                SizedBox(
                                  width: screenWidth / 2,
                                  child: Text(
                                        "Feel free to reach out to us via the contact form below or give us a call at +20 10 1516 9363. We'd love to hear from you!".tr(),
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30,),

                                Container(
                                  width: screenWidth/2,
                                  padding: EdgeInsets.only(left: 10,right: 10),

                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black,width: 0.5),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Subject",
                                      border: InputBorder.none,

                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 10),
                                  width: screenWidth/2,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black,width: 0.5),
                                  ),
                                  child: const TextField(
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        hintText: "Body",
                                        border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),

                                CustomHoverButton(
                                    title: "Send".tr(),
                                    height: 60,
                                    function: () {},
                                    color: kPrimaryColor,
                                    hoverTextColor: Colors.black,
                                    hoverColor: Colors.white)
                              ],
                            ),
                            Container(
                              width: screenWidth/2.5,
                              height: screenHeight/1.5,
                              decoration: const BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/male-worker-factory.jpg"))
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  ),
                  const Footer(),
                  const SizedBox(height: 50,),
                ],
              ),
            ),
          )),
    );
  }
}
