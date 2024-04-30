import 'dart:ui' as ui;
import 'package:alfatemia_engines/config/navigator.dart';
import 'package:alfatemia_engines/pages/about_us_page.dart';
import 'package:alfatemia_engines/pages/contact_us_page.dart';
import 'package:alfatemia_engines/pages/home_page.dart';
import 'package:alfatemia_engines/pages/products_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';
import 'app_bar_hover_button.dart';

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 100,
          height: 100,
        ),
        SizedBox(
          width: screenWidth / 5,
        ),
        Container(
          width: (screenWidth / 2) + 2,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            border: Border.all(color: kPrimaryColor, width: 1),
          ),
          child: Row(
            children: [
              CustomHoverButton(
                title: "Home".tr(),
                color: Colors.transparent,
                hoverColor: Colors.white,
                function: () {
                  navigator(
                    context: context,
                    route: HomeScreen.id
                  );
                },
              ),
              CustomHoverButton(
                title: "Products".tr(),
                color: Colors.transparent,
                hoverColor: Colors.white,
                function: () {
                  navigator(
                      context: context,
                      route: ProductsScreen.id
                  );
                },
              ),
              CustomHoverButton(
                title: "About Us".tr(),
                color: Colors.transparent,
                hoverColor: Colors.white,
                function: () {
                  navigator(
                      context: context,
                      route: AboutUsScreen.id
                  );
                },
              ),
              CustomHoverButton(
                title: "Contact Us".tr(),
                color: Colors.transparent,
                hoverColor: Colors.white,
                function: () {
                  navigator(
                      context: context,
                      route: ContactUsScreen.id
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        CustomHoverButton(
            title: localLanguage == "en"? "العربيه": "English",
            function: () {
              if (localLanguage == 'en') {
                localLanguage = 'ar';
                context.setLocale(const Locale('ar'));
                textDirection = ui.TextDirection.rtl;
              } else {
                localLanguage = 'en';
                context.setLocale(const Locale('en'));
                textDirection = ui.TextDirection.ltr;
              }
            },            color: kPrimaryColor,
            hoverFontWeight: FontWeight.bold,
            hoverTextColor: Colors.black,
            hoverColor: Colors.white),

      ],
    );
  }
}
