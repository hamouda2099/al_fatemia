import 'dart:ui';

import 'package:alfatemia_engines/config/constants.dart';
import 'package:alfatemia_engines/config/navigator.dart';
import 'package:alfatemia_engines/pages/contact_us_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_bar_hover_button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Divider(
          color: Colors.black,
          thickness: 0.5  ,
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Image(
                width: 100,
                height: 100,
                image: AssetImage("assets/images/logo.png")),
            SizedBox(
              width: screenWidth/5,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Head Office".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                  Text("16 Masr and Sudan Street, 2nd Industrial Zone, 10th of Ramadan City, Egypt".tr(),style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  Text("+20 101 516 9363".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  Text("alfatemiaengines@gmail.com".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth/6,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Socials".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                  Text("Facebook".tr(),style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  Text("Instagram".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  Text("Tiktok".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth/6,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Inquiries".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                  Text("For any inquiries, questions or commendations, please call: +2 010 1516 9363".tr(),style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                  ),),

                ],
              ),
            ),
            CustomHoverButton(
                title: "Contact Us".tr(),
                height: 60,
                function: () {
                  navigator(
                    context: context,
                    route: ContactUsScreen.id
                  );
                },
                color: kPrimaryColor,
                hoverTextColor: Colors.black,
                hoverColor: Colors.white)
          ],
        )
      ],
    );
  }
}
