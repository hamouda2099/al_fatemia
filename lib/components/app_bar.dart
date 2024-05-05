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
    return mobileView
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 50,
                height: 50,
              ),
              Container(
                width: (screenWidth / 2),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  border: Border.all(color: kPrimaryColor, width: 1),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        CustomHoverButton(
                          title: "Home".tr(),
                          height: 35,
                          color: Colors.transparent,
                          width: screenWidth/5,

                          hoverColor: Colors.white,
                          function: () {
                            navigator(context: context, route: HomeScreen.id);
                          },
                        ),
                        CustomHoverButton(
                          title: "Products".tr(),
                          height: 35 ,
                          width: screenWidth/5,
                          color: Colors.transparent,
                          hoverColor: Colors.white,
                          function: () {
                            navigator(context: context, route: ProductsScreen.id);
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomHoverButton(
                          title: "About Us".tr(),
                          width: screenWidth/5,

                          height: 35,
                          color: Colors.transparent,
                          hoverColor: Colors.white,
                          function: () {
                            navigator(context: context, route: AboutUsScreen.id);
                          },
                        ),
                        CustomHoverButton(
                          title: "Contact Us".tr(),
                          width: screenWidth/5,

                          height: 35,
                          color: Colors.transparent,
                          hoverColor: Colors.white,
                          function: () {
                            navigator(context: context, route: ContactUsScreen.id);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CustomHoverButton(
                  title: localLanguage == "en" ? "العربية" : "English",
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
                  },
                  color: kPrimaryColor,
                  width: screenWidth/5,
                  hoverFontWeight: FontWeight.bold,
                  hoverTextColor: Colors.black,
                  hoverColor: Colors.white),
            ],
          )
        : Row(
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
                        navigator(context: context, route: HomeScreen.id);
                      },
                    ),
                    CustomHoverButton(
                      title: "Products".tr(),
                      color: Colors.transparent,
                      hoverColor: Colors.white,
                      function: () {
                        navigator(context: context, route: ProductsScreen.id);
                      },
                    ),
                    CustomHoverButton(
                      title: "About Us".tr(),
                      color: Colors.transparent,
                      hoverColor: Colors.white,
                      function: () {
                        navigator(context: context, route: AboutUsScreen.id);
                      },
                    ),
                    CustomHoverButton(
                      title: "Contact Us".tr(),
                      color: Colors.transparent,
                      hoverColor: Colors.white,
                      function: () {
                        navigator(context: context, route: ContactUsScreen.id);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              CustomHoverButton(
                  title: localLanguage == "en" ? "العربيه" : "English",
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
                  },
                  color: kPrimaryColor,
                  hoverFontWeight: FontWeight.bold,
                  hoverTextColor: Colors.black,
                  hoverColor: Colors.white),
            ],
          );
  }
}

void menu(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.8),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    navigator(context: context, route: HomeScreen.id);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Home".tr(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    navigator(context: context, route: ProductsScreen.id);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Products".tr(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    navigator(context: context, route: AboutUsScreen.id);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "About Us".tr(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    navigator(context: context, route: ContactUsScreen.id);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "Contact Us".tr(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (localLanguage == 'en') {
                      localLanguage = 'ar';
                      context.setLocale(const Locale('ar'));
                      textDirection = ui.TextDirection.rtl;
                    } else {
                      localLanguage = 'en';
                      context.setLocale(const Locale('en'));
                      textDirection = ui.TextDirection.ltr;
                    }
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        localLanguage == "en" ? "العربيه" : "English",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
