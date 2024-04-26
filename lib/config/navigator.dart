import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../services/app_pref.dart';

Future<void> navigator({
  BuildContext? context,
  String? route,
  bool? isBack = false,
  bool remove = false,
  bool replacement = false,
}) async {
  if (isBack!) {
    try {
      List stackList = AppPref.getStackList();
      stackList.removeAt(stackList.length - 1);
      AppPref.setStackList(stackList);
      Navigator.of(context!).pushNamedAndRemoveUntil(
          stackList[stackList.length - 1], (Route<dynamic> route) => false);
    } catch (e) {
      AppPref.setStackList([]);
      Navigator.of(context!).pushNamedAndRemoveUntil(
          HomeScreen.id, (Route<dynamic> route) => false);
    }
  } else {
    if (route == null) {
      return;
    }
    if (remove) {
      AppPref.setStackList([]);
    } else if (replacement) {
      List stackList = AppPref.getStackList();
      stackList.removeAt(stackList.length - 1);
      stackList.add(route);
      AppPref.setStackList(stackList);
    } else {
      List stackList = AppPref.getStackList();

      if (stackList.isNotEmpty) {
        if (stackList[stackList.length - 1] != route) {
          stackList.add(route);
          AppPref.setStackList(stackList);
        }
      } else {
        stackList.add(route);
        AppPref.setStackList(stackList);
      }
    }
    Navigator.of(context!)
        .pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false);
  }
}
