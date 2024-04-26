import 'package:alfatemia_engines/pages/home_page.dart';
import 'package:alfatemia_engines/services/app_pref.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import 'config/route_handler.dart';

void main() async {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;
  await Hive.openBox(AppPref.kBoxName);
  await Hive.openBox(AppPref.kBoxImagesName);
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      child: const ProviderScope(child: App())));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        initialRoute: HomeScreen.id,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: "Al-Fatemia Engines | الفاطمية للمحركات",
        onGenerateRoute: Application.router!.generator,
        theme: ThemeData(fontFamily: 'Janna'),
    );
  }
}

// class PendingService extends StatelessWidget {
//   const PendingService({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Text(
//             "Service Disabled",
//             style: TextStyle(color: Colors.black, fontSize: 24),
//           ),
//         ),
//       ),
//     );
//   }
// }
