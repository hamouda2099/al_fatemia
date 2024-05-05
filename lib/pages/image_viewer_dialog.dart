import 'package:alfatemia_engines/config/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageViewer {
  void show(BuildContext context, {String? image}) {
    showDialog(
        context: context,
        builder: (context) => Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image ?? "-"), fit: mobileView ? BoxFit.fitWidth : BoxFit.fitHeight),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Icon(
                          Icons.close,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ));
  }
}
