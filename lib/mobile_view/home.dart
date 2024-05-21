import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/app_bar.dart';
import '../components/app_bar_hover_button.dart';
import '../components/fade_image.dart';
import '../components/footer.dart';
import '../config/constants.dart';
import '../config/navigator.dart';
import '../pages/contact_us_page.dart';
import '../pages/image_viewer_dialog.dart';
import '../pages/video_player_dialog.dart';

class HomeMobile extends StatelessWidget {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight/2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/male-worker-factory.jpg"),
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
                SizedBox(height: screenHeight/10,),
                Container(
                  width: screenWidth,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Al-Fatemia Engines".tr(),
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ).animate()
                          .fadeIn(duration: 600.ms)
                          .then(delay: 200.ms) // baseline=800ms
                          .slide(),
                      Text(
                        "The first and only supplier for engines in middle east."
                            .tr(),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ).animate()
                          .fadeIn(duration: 600.ms)
                          .then(delay: 200.ms) // baseline=800ms
                          .slide(),
                      Text(
                        "Egyption Hands 100%".tr(),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ).animate()
                          .fadeIn(duration: 600.ms)
                          .then(delay: 200.ms) // baseline=800ms
                          .slide(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomHoverButton(
                              title: "Contact Us".tr(),
                              borderColor: Colors.white,
                              height: 40,
                              width: screenWidth/4,
                              function: () {
                                navigator(
                                    context: context,
                                    route: ContactUsScreen.id);
                              },
                              color: Colors.transparent,
                              hoverTextColor: Colors.black,
                              hoverColor: Colors.white).animate().slide(),
                          const SizedBox(
                            width: 20,
                          ),
                          CustomHoverButton(
                              title: "Lets Go".tr(),
                              height: 40,
                              width: screenWidth/4,
                              function: () {
                                scrollController.animateTo(400,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.ease);
                              },
                              color: kPrimaryColor,
                              hoverTextColor: Colors.black,
                              hoverColor: Colors.white)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 20,
                ),
                Container(
                  width: screenWidth,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      image:DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/frame.jpg"))
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Future with Al-Fatemia".tr(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Your Trusted Supplier for Engines".tr(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                          CustomHoverButton(
                              title: "Explore Now".tr(),
                              height: 40,
                              width: screenWidth/4,
                              borderColor: kPrimaryColor,
                              function: () {
                                scrollController.animateTo(2450,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.ease);
                              },
                              color: kPrimaryColor,
                              hoverTextColor: kPrimaryColor,
                              hoverColor: Colors.white),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap:(){
                              playVideoFromUrl(context,url: "https://www.youtube.com/embed/6GmFGkr5UJE");
                            },
                            child: Container(
                              width: screenWidth/1.2,
                              height: screenWidth/1.2,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/video_0.png"))
                              ),
                              child: Container(
                                color: Colors.black.withOpacity(0.4),
                                width: screenWidth/1.2,
                                height: screenWidth/1.2,
                                child: const Icon(Icons.play_arrow,color: kPrimaryColor,
                                  size: 50,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            width: screenWidth/1.2,
                            child: const Text(
                                "الفاطمية للمحركات | بايدي مصرية ١٠٠٪"
                              ,maxLines: 3, style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                          ),


                          const SizedBox(height: 20,),
                          InkWell(
                            onTap:(){
                              playVideoFromUrl(context,url: "https://www.youtube.com/embed/NbXLKWtDlSg");
                            },
                            child: Container(
                              width: screenWidth/1.2,
                              height: screenWidth/1.2,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/video_1.png"))
                              ),
                              child: Container(
                                color: Colors.black.withOpacity(0.4),
                                width: screenWidth/1.2,
                                height: screenWidth/1.2,
                                child: const Icon(Icons.play_arrow,color: kPrimaryColor,
                                  size: 50,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            width: screenWidth/1.2,
                            child: const Text("شوف دلوقت موتور الفاطمية المصري بكل مكوناته مع التفاصيل بضمان الجودة ودقة الإتقان",maxLines: 3, style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                          ),


                          const SizedBox(height: 20,),
                          InkWell(
                            onTap:(){
                              playVideoFromUrl(context,url: "https://www.youtube.com/embed/SYPr4gozW10");
                            },
                            child: Container(
                              width: screenWidth/1.2,
                              height: screenWidth/1.2,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/video_2.png"))
                              ),
                              child: Container(
                                color: Colors.black.withOpacity(0.4),
                                width: screenWidth/1.2,
                                height: screenWidth/1.2,
                                child: const Icon(Icons.play_arrow,color: kPrimaryColor,
                                  size: 50,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            width: screenWidth/1.2,
                            child: const Text("كفاءة تصنيع موتور المروحة المصري بأقوى الخامات بيور 100%",maxLines: 3, style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap:(){
                          playVideoFromUrl(context,url: "https://www.youtube.com/embed/87QquNnPwUY");
                        },
                        child: Container(
                          width: screenWidth/1.2,
                          height: screenWidth/1.2,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/video_3.png"))
                          ),
                          child: Container(
                            color: Colors.black.withOpacity(0.4),
                            width: screenWidth/1.2,
                            height: screenWidth/1.2,
                            child: const Icon(Icons.play_arrow,color: kPrimaryColor,
                              size: 50,),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: screenWidth/1.2,
                        child: const Text("لأول مرة في مصر موتور مروحة صناعة مصرية 100% بخط الإنتاج كامل وعمالة محلية",maxLines: 3, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      const SizedBox(height: 20,),

                      InkWell(
                        onTap:(){
                          playVideoFromUrl(context,url: "https://www.youtube.com/embed/KsEnmtKttzo");
                        },
                        child: Container(
                          width: screenWidth/1.2,
                          height: screenWidth/1.2,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/video_4.png"))
                          ),
                          child: Container(
                            color: Colors.black.withOpacity(0.4),
                            width: screenWidth/1.2,
                            height: screenWidth/1.2,
                            child: const Icon(Icons.play_arrow,color: kPrimaryColor,
                              size: 50,),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: screenWidth/1.2,
                        child: const Text("مصنع الفاطمية للمحركات مصنع الموتور المصري",maxLines: 3, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
                      ),

                    ],
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight / 2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/about_back.jpg"))),
                  child: Container(
                    width: screenWidth,
                    height: screenHeight / 3,
                    padding: const EdgeInsets.all(10),
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Us".tr(),
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "The Trusted Supplier for engines".tr(),
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: screenWidth / 1.2,
                          child: Text(
                            "abstract".tr(),
                            maxLines: 10,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Row(
                          children: [
                            Icon(Icons.circle_rounded,color: Colors.white,size: 10,),
                            SizedBox(width: 5,),
                            Text(
                              "ماتور مروحة سقف و استاند بكل الانواع",
                              maxLines: 10,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.circle_rounded,color: Colors.white,size: 10,),
                            SizedBox(width: 5,),
                            Text(
                              "ماتور شفاط و غيره من المنتجات",
                              maxLines: 10,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.circle_rounded,color: Colors.white,size: 10,),
                            SizedBox(width: 5,),
                            Text(
                              "مواتير الخلاطات بكل أنواعها",
                              maxLines: 10,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.circle_rounded,color: Colors.white,size: 10,),
                            SizedBox(width: 5,),
                            Text(
                              "مؤخراً صناعة بتوجاز Stoven",
                              maxLines: 10,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Social Media Events".tr(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: screenWidth,
                        color: Colors.white,
                        child: const Image(
                          image:
                          AssetImage("assets/images/mockup.png"),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: kPrimaryColor,
                  width: screenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenWidth,
                        decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                opacity: 0.5,
                                repeat: ImageRepeat.repeat,
                                image: AssetImage("assets/images/pattern.png"))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(20, (index) => Padding(
                            padding: const EdgeInsets.all(30),
                            child: InkWell(
                              onTap: (){
                                ImageViewer().show(context,image: "assets/images/post_${index + 1}.jpg");
                              },
                              child: Image.asset(
                                "assets/images/post_${index + 1}.jpg",width: screenWidth,height: screenWidth,fit: BoxFit.contain,),
                            ),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
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
                    child:                 Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              const SizedBox(height: 10,),
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
                              const SizedBox(height: 10,),

                              SizedBox(
                                width: screenWidth/1.2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Stoven Gas stove".tr(),
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      "stoven_script".tr(),
                                      maxLines: 14,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "ستانلس ستيل كامل",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "مزود بمروحتين",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "ومفتاح لكل من شعلتي الشوايه والفرن",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "تايمر اشعال ذاتي شوايه",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "لمبه إضاءه بالفرن",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          " الزجاج الحراري",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "فرن اينملد ضد صدا",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "الغاز الطبيعي وغاز البروبان",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "عجل للحركه",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "صنع بإيدي مصريه.",
                                          maxLines: 14,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(height: 50,),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth,
                  padding: const EdgeInsets.all(30),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_1.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_1.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_2.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_2.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_3.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_3.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_4.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_4.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_5.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_5.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_6.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_6.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_7.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_7.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_8.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_8.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_9.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_9.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              ImageViewer().show(context,
                                  image:
                                  "assets/images/s_10.jpeg");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/images/s_10.jpeg" ,
                                width: screenWidth / 2.5,
                                height: screenWidth / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


                Container(
                  width: screenWidth,
                  color: Colors.white,
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Explore our engines power.".tr(),
                        style: const TextStyle(
                            color: kPrimaryColor, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeImage(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Stand Motor (S01)".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 14),
                                ),
                                const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("لفة الموتور بالكامل من النحاس",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("جسم الموتور من الألومنيوم",style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("سرعة للموتور:1400 دورة في الدقيقة ب3 سرعات مختلفة",style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("طاقته الكهربائية: تيار متردد 200فولت ــ50 هرتز",style: TextStyle(color: Colors.white,fontSize: 12,),))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("الطاقة القصوي للموتور تصل إلى 70 وات",style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ],
                                ),
                              ],
                            ),
                            assetImageUrl:
                            "assets/images/stand_motor_1.png",
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          FadeImage(
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Hood Motor (H01)".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 14),
                                ),
                                const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("سرعة المروحة: ثلاث سرعات مختلفة",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("نظام الفلتر: فلتر معدني",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("معدل تدفق الهواء: 757 مترًا مكعبًا لكل ساعة",style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("قوة الشفط: 400 متر مكعب/ساعة",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("لو فلتر بهيكل ألومونيوم يمكنك غسله في غسالة الأطباق",style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ],
                                ),
                              ],
                            ),

                            assetImageUrl:
                            "assets/images/hood_motor_1.png",
                          ),


                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeImage(
                            // title: "Ceiling Motor(C01)".tr(),
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ceiling Motor(C01)".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 14),
                                ),
                                const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("لفة الموتور بالكامل من النحاس",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("جسم الموتور من الألومنيوم",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("تصميمات مختلفة للمحرك وعلبة التروس ",style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("التشغيل السلس والفعالية",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),

                            assetImageUrl:
                            "assets/images/ceiling_motor_1.png",
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          FadeImage(
                            // title: "Blinder Motor (B02)".tr(),
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Blinder Motor (B02)".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 14),
                                ),
                                const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("حجم الموتور: 90 سنتيمترًا",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("سرعة المروحة: ثلاث سرعات مختلفة",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("معدل تدفق الهواء: 757 مترًا مكعبًا لكل ساعة",style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("MM التطوير التنظيمي للجزء الثابت: 70",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("قبضان العاكس: 24",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Text("(Q40,2) Q39,5: قوة الدوران",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.circle_rounded,color: Colors.white,size: 15,),
                                    SizedBox(width:10),
                                    Expanded(child: Text("فتحة الدوران: 12 فتحة",style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ],
                                ),
                              ],
                            ),

                            assetImageUrl:
                            "assets/images/blinder_motor_1.png",
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_1.jpeg",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_2.jpeg",
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_3.jpeg",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_4.jpeg",
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_5.jpeg",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_6.jpeg",
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_7.jpeg",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_8.jpeg",
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_9.jpeg",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_10.jpeg",
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_11.jpeg",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FadeImage(
                            assetImageUrl:
                            "assets/images/engine_12.jpeg",
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Our Branches".tr(),
                        style: const TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "El-Ula Plass".tr(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  Text(
                                    "El-Ulaa Plus for Wholesale Products Trading"
                                        .tr(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: screenWidth / 4,
                            height: screenHeight / 4,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "assets/images/ola_logo.jpg"))),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Headquarters in Dubai".tr(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10,),

                          Text(
                            "Dubai deira , DBC building, office No.114".tr(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10,),
                          
                              Text(
                                "+971543557055".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                              Text(
                                "+971583883825".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                              Text(
                                "+97144487033".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Socials".tr(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10,),
                          
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () async {
                                        await launchUrl(
                                          Uri.parse("https://www.facebook.com/profile.php?id=61558439944898"),
                                        );
                                      },
                                      child: Image.asset("assets/images/facebook.png",width: 20,height: 20,)),
                                  const SizedBox(width: 10,),
                                  InkWell(
                                      onTap: () async {
                                        await launchUrl(
                                          Uri.parse("https://www.instagram.com/aloula_blass/"),
                                        );
                                      },
                                      child: Image.asset("assets/images/instagram.png",width: 20,height: 20,)),
                                  const SizedBox(width: 10,),

                                  InkWell(
                                      onTap: () async {
                                        await launchUrl(
                                          Uri.parse("https://www.tiktok.com/@aloulablaasforgoods?_t=8ljyrAnNODe&_r=1"),
                                        );
                                      },
                                      child: Image.asset("assets/images/tik-tok.png",width: 20,height: 20,)),
                                ],
                              )

                            ],
                          ),
                        ],
                      ),

                      Footer()
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
