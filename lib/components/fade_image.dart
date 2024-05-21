import 'package:alfatemia_engines/pages/image_viewer_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hovering/hovering.dart';

import '../config/constants.dart';

class FadeImage extends StatelessWidget {
  FadeImage({this.content, this.assetImageUrl});
  String? assetImageUrl;
  Widget? content;
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
            width: mobileView ? screenWidth/3 : screenWidth / 5,
            height: mobileView ? screenHeight/4 : screenHeight / 1.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(assetImageUrl ?? '-'))),
          ),
          secondChild: Container(
            width: mobileView ? screenWidth/3 : screenWidth / 5,
            height: mobileView ? screenHeight/4 : screenHeight / 1.5,
            decoration:  BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetImageUrl ?? '-'))),
            child: Container(
              width: mobileView ? screenWidth/3 : screenWidth / 5,
              height: mobileView ? screenHeight/4 : screenHeight / 1.5,
              color: kPrimaryColor.withOpacity(0.5),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: content
            ),
          )),
    );
  }
}
