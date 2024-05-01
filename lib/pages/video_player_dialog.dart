import 'dart:ui_web';

import 'package:alfatemia_engines/config/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// void playVideo(BuildContext context,{String? url}){
//   VideoPlayerController controller = VideoPlayerController.networkUrl(Uri.parse(
//       'https://www.facebook.com/alfatemiaengines/videos/1671409696591297'));
//   controller.initialize().then((value){
//     showDialog(context: context, builder: (context){
//       return Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Container(
//           width: screenWidth,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Container(
//                 width: screenWidth/2,
//                 height: screenHeight/2,
//                 child: controller.value.isInitialized
//                     ? AspectRatio(
//                   aspectRatio: controller.value.aspectRatio,
//                   child: VideoPlayer(controller),
//                 )
//                     : Container(child: const Text("Error"),),
//               )
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             controller.value.isPlaying
//                 ? controller.pause()
//                 : controller.play();
//           },
//           child: Icon(
//             controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
//       );
//     });
//
//   });
// }

void playVideoFromUrl(BuildContext context,{String? url}){
  platformViewRegistry.registerViewFactory(
      'hello-world-html',
          (int viewId) => IFrameElement()
        ..width = '640'
        ..height = '360'
        ..src = url
        ..style.border = 'none');
  showDialog(context: context, builder: (context){
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(30),
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.white,
                    child: Icon(Icons.close,color: Colors.black,)),
              ),
            ),
            Expanded(
              child: SizedBox(
                 width: screenWidth/1.5,
                 height: mobileView ? screenHeight/4 : screenHeight/2,
                 child: const HtmlElementView(viewType: 'hello-world-html'),
               ),
            ),
          ],
        ),
      ),
    );
  });
}