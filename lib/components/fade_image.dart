import 'package:alfatemia_engines/pages/image_viewer_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../config/constants.dart';

class FadeImage extends StatelessWidget {
  FadeImage({this.title, this.assetImageUrl});
  String? assetImageUrl;
  String? title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        ImageViewer().show(context,image:assetImageUrl );
      },
      child: HoverCrossFadeWidget(
          duration: const Duration(
            seconds:1
          ),
          firstChild: Container(
            width: screenWidth / 5,
            height: screenHeight / 1.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(assetImageUrl ?? '-'))),
          ),
          secondChild: Container(
            width: screenWidth / 5,
            height: screenHeight / 1.5,
            decoration:  BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetImageUrl ?? '-'))),
            child: Container(
              width: screenWidth / 5,
              height: screenHeight / 1.5,
              color: kPrimaryColor.withOpacity(0.5),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                title ?? "-",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          )),
    );
  }
}
