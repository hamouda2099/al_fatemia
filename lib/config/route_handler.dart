import 'package:alfatemia_engines/pages/about_us_page.dart';
import 'package:alfatemia_engines/pages/contact_us_page.dart';
import 'package:alfatemia_engines/pages/products_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/not_fount_screen.dart';

class Application {
  static FluroRouter? router;
}

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return NotFoundScreen();
      },
    );

    router.define(
      HomeScreen.id,
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          return HomeScreen();
        },
      ),
    );
    router.define(
      ProductsScreen.id,
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          return ProductsScreen();
        },
      ),
    );
    router.define(
      AboutUsScreen.id,
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          return AboutUsScreen();
        },
      ),
    );

    router.define(
      ContactUsScreen.id,
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          return ContactUsScreen();
        },
      ),
    );

  }
}
