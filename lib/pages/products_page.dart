import 'package:alfatemia_engines/mobile_view/products.dart';
import 'package:alfatemia_engines/pages/image_viewer_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import '../components/app_bar.dart';
import '../components/app_bar_hover_button.dart';
import '../components/fade_image.dart';
import '../components/footer.dart';
import '../config/constants.dart';
import '../config/navigator.dart';

class ProductsScreen extends StatelessWidget {
  static const String id = '/products';
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    back() {
      navigator(
        context: context,
        isBack: true,
      );
    }

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth > 800) {
      mobileView = false;
    } else {
      mobileView = true;
    }
    return WillPopScope(
      onWillPop: () async {
        back();
        return false;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: mobileView ? ProductsMobile() : Stack(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 1.1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/products_back.png"),
                  ),
                ),
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
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
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 50,),
                                Column(
                                  children: [
                                    Container(
                                      width: screenWidth/3,
                                      height: screenHeight/1.5,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("assets/images/stevn_1.jpg"))
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 10,),
                                SizedBox(
                                  height: screenHeight/1.5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     InkWell(
                                         onTap:(){
                                           ImageViewer().show(context,image:"assets/images/stevn_2.jpg" );
                                         },
                                         child: Image.asset("assets/images/stevn_2.jpg",width: 150,height: 150,fit: BoxFit.contain,)),
                                     InkWell(
                                         onTap:(){
                                           ImageViewer().show(context,image:"assets/images/stevn_3.jpg" );
                                         },
                                         child: Image.asset("assets/images/stevn_3.jpg",width: 150,height: 150,fit: BoxFit.contain,)),
                                     InkWell(
                                         onTap:(){
                                           ImageViewer().show(context,image:"assets/images/stevn_4.jpg" );
                                         },
                                         child: Image.asset("assets/images/stevn_4.jpg",width: 150,height: 150,fit: BoxFit.contain,)),
                                     InkWell(
                                         onTap:(){
                                           ImageViewer().show(context,image:"assets/images/stevn_5.jpg" );
                                         },
                                         child: Image.asset("assets/images/stevn_5.jpg",width: 150,height: 150,fit: BoxFit.contain,)),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: screenWidth/3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(height: 100,),
                                      Text(
                                        "Stoven Gas stove".tr(),
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 40),
                                      ),
                                       Padding(
                                        padding: const EdgeInsets.only(
                                            left: 80.0, right: 80, top: 20),
                                        child: Text(
                                          "stoven_script".tr(),
                                          maxLines: 20,
                                          textAlign: TextAlign.justify,
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 25),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(width: 50,),

                              ],
                            ),
                            SizedBox(height: 150,),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            Text(
                              "Our Products".tr(),
                              style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45),
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: screenWidth / 2,
                                  height: screenHeight / 1.2,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/stand_motor_1.png"))),
                                ),
                                Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Stand Motors".tr(),
                                          style: const TextStyle(
                                              color: Colors.black, fontSize: 30),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        // const Padding(
                                        //   padding: EdgeInsets.only(
                                        //       left: 80.0, right: 80, top: 20),
                                        //   child: Text(
                                        //     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                        //     maxLines: 5,
                                        //     textAlign: TextAlign.justify,
                                        //     style: TextStyle(
                                        //         color: Colors.black, fontSize: 16),
                                        //   ),
                                        // ),
                                      ],
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Hood Motors".tr(),
                                          style: const TextStyle(
                                              color: Colors.black, fontSize: 30),
                                        ),
                                        // const Padding(
                                        //   padding: EdgeInsets.only(
                                        //       left: 80.0, right: 80, top: 20),
                                        //   child: Text(
                                        //     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                        //     maxLines: 5,
                                        //     textAlign: TextAlign.justify,
                                        //     style: TextStyle(
                                        //         color: Colors.black, fontSize: 16),
                                        //   ),
                                        // ),
                                      ],
                                    )),
                                Container(
                                  width: screenWidth / 2,
                                  height: screenHeight / 1.2,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/hood_motor_1.png"))),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: screenWidth / 2,
                                  height: screenHeight / 1.2,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/ceiling_motor_1.png"))),
                                ),
                                Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Ceiling Motors".tr(),
                                          style: const TextStyle(
                                              color: Colors.black, fontSize: 30),
                                        ),
                                        // const Padding(
                                        //   padding: EdgeInsets.only(
                                        //       left: 80.0, right: 80, top: 20),
                                        //   child: Text(
                                        //     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                        //     maxLines: 5,
                                        //     textAlign: TextAlign.justify,
                                        //     style: TextStyle(
                                        //         color: Colors.black, fontSize: 16),
                                        //   ),
                                        // ),
                                      ],
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Blender Motors".tr(),
                                          style: const TextStyle(
                                              color: Colors.black, fontSize: 30),
                                        ),
                                        // const Padding(
                                        //   padding: EdgeInsets.only(
                                        //       left: 80.0, right: 80, top: 20),
                                        //   child: Text(
                                        //     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
                                        //     maxLines: 5,
                                        //     textAlign: TextAlign.justify,
                                        //     style: TextStyle(
                                        //         color: Colors.black, fontSize: 16),
                                        //   ),
                                        // ),
                                      ],
                                    )),
                                Container(
                                  width: screenWidth / 2,
                                  height: screenHeight / 1.2,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/blinder_motor_1.png"))),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
