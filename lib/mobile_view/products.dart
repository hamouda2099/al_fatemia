import 'package:alfatemia_engines/components/footer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/app_bar.dart';
import '../config/constants.dart';
import '../pages/image_viewer_dialog.dart';

class ProductsMobile extends StatelessWidget {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/products_back.png"),
            ),
          ),
          child: Container(
            width: screenWidth,
            height: screenHeight/2,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        Scrollbar(
          controller: scrollController,
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: CustomAppBar(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenWidth/1.2,
                            height: screenHeight/3,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/stevn_1.jpg"))
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: screenWidth/1.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    onTap:(){
                                      ImageViewer().show(context,image:"assets/images/stevn_2.jpg" );
                                    },
                                    child: Image.asset("assets/images/stevn_2.jpg",width: screenWidth/5,height: screenWidth/5,fit: BoxFit.contain,)),
                                InkWell(
                                    onTap:(){
                                      ImageViewer().show(context,image:"assets/images/stevn_3.jpg" );
                                    },
                                    child: Image.asset("assets/images/stevn_3.jpg",width: screenWidth/5,height: screenWidth/5,fit: BoxFit.contain,)),
                                InkWell(
                                    onTap:(){
                                      ImageViewer().show(context,image:"assets/images/stevn_4.jpg" );
                                    },
                                    child: Image.asset("assets/images/stevn_4.jpg",width: screenWidth/5,height: screenWidth/5,fit: BoxFit.contain,)),
                                InkWell(
                                    onTap:(){
                                      ImageViewer().show(context,image:"assets/images/stevn_5.jpg" );
                                    },
                                    child: Image.asset("assets/images/stevn_5.jpg",width: screenWidth/5,height: screenWidth/5,fit: BoxFit.contain,)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),

                          SizedBox(
                            width: screenWidth/1.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Stoven Gas stove".tr(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20, top: 10),
                                  child: Text(
                                    "stoven_script".tr(),
                                    maxLines: 14,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 50,),

                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  color:Colors.white,
                  width: screenWidth,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Our Products".tr(),
                        style: const TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Container(
                        width: screenWidth / 2,
                        height: screenHeight / 2,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    "assets/images/stand_motor_1.png"))),
                      ),
                      Column(
                        children: [
                          Text(
                            "Stand Motors".tr(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          // const Padding(
                          //   padding: EdgeInsets.only(
                          //       left: 10.0, right: 10, top: 20),
                          //   child: Text(
                          //     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                          //     maxLines: 5,
                          //     textAlign: TextAlign.justify,
                          //     style: TextStyle(
                          //         color: Colors.black, fontSize: 16),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: screenWidth / 2,
                        height: screenHeight / 2,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    "assets/images/hood_motor_1.png"))),
                      ),
                      Column(
                        children: [
                          Text(
                            "Hood Motors".tr(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.only(
                          //       left: 10.0, right: 10, top: 20),
                          //   child: Text(
                          //     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                          //     maxLines: 5,
                          //     textAlign: TextAlign.justify,
                          //     style: TextStyle(
                          //         color: Colors.white, fontSize: 16),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: screenWidth / 2,
                        height: screenHeight / 2,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    "assets/images/ceiling_motor_1.png"))),
                      ),
                      Column(
                        children: [
                          Text(
                            "Ceiling Motors".tr(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.only(
                          //       left: 10.0, right: 10, top: 20),
                          //   child: Text(
                          //     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                          //     maxLines: 5,
                          //     textAlign: TextAlign.justify,
                          //     style: TextStyle(
                          //         color: Colors.white, fontSize: 16),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: screenWidth / 2,
                        height: screenHeight / 2,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    "assets/images/blinder_motor_1.png"))),
                      ),
                      Column(
                        children: [
                          Text(
                            "Blender Motors".tr(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.only(
                          //       left: 10.0, right: 10, top: 20),
                          //   child: Text(
                          //     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                          //     maxLines: 5,
                          //     textAlign: TextAlign.justify,
                          //     style: TextStyle(
                          //         color: Colors.white, fontSize: 16),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Footer()
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
