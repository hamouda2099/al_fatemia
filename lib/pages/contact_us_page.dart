import 'package:alfatemia_engines/mobile_view/contact.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/app_bar.dart';
import '../components/app_bar_hover_button.dart';
import '../components/footer.dart';
import '../config/constants.dart';
import '../config/navigator.dart';

class ContactUsScreen extends StatelessWidget {
  static const String id = '/contact';
  ScrollController scrollController = ScrollController();
  TextEditingController subjCnt = TextEditingController();
  TextEditingController bodyCnt = TextEditingController();
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
          body: mobileView ?  ContactMobile() : Stack(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 1.1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/call_center.jpg"),
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
                        child: SizedBox(
                          width: screenWidth,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 50,),
                              Container(
                                color: Colors.white,
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "Get in Touch".tr(),
                                  style: const TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Text(
                                "Have Any Questions ?".tr(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 45),
                              ),
                              SizedBox(
                                width: screenWidth / 2,
                                child: Text(
                                  "Feel free to reach out to us via the contact form below or give us a call at +20 10 1516 9363. We'd love to hear from you!".tr(),
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30,),

                              Container(
                                width: screenWidth/2,
                                padding: const EdgeInsets.only(left: 10,right: 10),

                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 0.5),
                                ),
                                child:  TextField(
                                  controller: subjCnt,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    hintText: "Subject".tr(),
                                    border: InputBorder.none,
                                      hintStyle: const TextStyle(color: Colors.white)

                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                width: screenWidth/2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 0.5),
                                ),
                                child:  TextField(
                                  controller: bodyCnt,
                                  style: const TextStyle(color: Colors.white),
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: "Body".tr(),
                                    border: InputBorder.none,
                                    hintStyle: const TextStyle(color: Colors.white)
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),

                              CustomHoverButton(
                                  title: "Send".tr(),
                                  height: 60,
                                  function: () async {
                                    Uri mail = Uri.parse(
                                        "mailto:info@fruity-charging.com?subject=${subjCnt.text}&body=${bodyCnt.text}");
                                    await launchUrl(mail);
                                  },
                                  color: kPrimaryColor,
                                  hoverTextColor: Colors.black,
                                  hoverColor: Colors.white),
                              const SizedBox(height: 30,),
                            ],
                          ),
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
