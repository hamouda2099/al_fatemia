import 'package:alfatemia_engines/config/constants.dart';
import 'package:alfatemia_engines/config/navigator.dart';
import 'package:alfatemia_engines/pages/contact_us_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app_bar_hover_button.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mobileView ? Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Divider(
          color: Colors.black,
          thickness: 0.5  ,
        ),
        const SizedBox(
          height: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Image(
                width: 100,
                height: 100,
                image: AssetImage("assets/images/logo.png")),
            SizedBox(
              width: screenWidth/1.2,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Egypt Branch".tr(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight:
                        FontWeight.bold),
                  ),
                  Text("Head Office".tr(),style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                  Text(
                    "6,Build 9,Obour BBuildings, Salah Salem Street, Egypt".tr()
                        .tr(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 10,),

                  Text(
                    "Factory Address".tr(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight:
                        FontWeight.bold),),
                  const SizedBox(height: 10,),

                  Text("16 Masr and Sudan Street, 2nd Industrial Zone, 10th of Ramadan City, Egypt".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  Text("201069048848"+"+",style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  Text("201013661834"+"+",style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  Text("201227014747"+"+",style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  Text("0554498532",style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  Text("alfatemiaengines@gmail.com".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                ],
              ),
            ),
            SizedBox(height: 10,),

            SizedBox(
              width: screenWidth/1.2,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Socials".tr(),style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      InkWell(
                          onTap: () async{
                            await launchUrl(
                              Uri.parse("https://www.facebook.com/alfatemiaengines.eg"),
                            );
                          },
                          child: Image.asset("assets/images/facebook.png",width: 20,height: 20,)
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                          onTap: () async{
                            await launchUrl(
                              Uri.parse("https://www.instagram.com/al_fatemia_engines/?next=%2F"),
                            );
                          },
                          child: Image.asset("assets/images/instagram.png",width: 20,height: 20,)
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                          onTap: ()async{
                            await launchUrl(
                              Uri.parse("https://www.tiktok.com/@al.fatemia.engine?_t=8liNT51oDDC&_r=1"),
                            );
                          },
                          child: Image.asset("assets/images/tik-tok.png",width: 20,height: 20,)
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),

            SizedBox(
              width: screenWidth/1.2,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Inquiries".tr(),style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                  Text("For any inquiries, questions or commendations, please contact us.".tr()
                    ,style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),),

                ],
              ),
            ),
            SizedBox(height: 20,),
            CustomHoverButton(
                title: "Contact Us".tr(),
                height: 40,
                width: screenWidth/4,
                function: () {
                  navigator(
                      context: context,
                      route: ContactUsScreen.id
                  );
                },
                color: kPrimaryColor,
                hoverTextColor: Colors.black,
                hoverColor: Colors.white)
          ],
        )
      ],
    ) : Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Divider(
          color: Colors.black,
          thickness: 0.5  ,
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Image(
                width: 100,
                height: 100,
                image: AssetImage("assets/images/logo.png")),
            SizedBox(
              width: screenWidth/5,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Egypt Branch".tr(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight:
                        FontWeight.bold),
                  ),
                  Text("Head Office".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),

                  Text(
                    "6,Build 9,Obour BBuildings, Salah Salem Street, Egypt".tr()
                        .tr(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "Factory Address".tr(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight:
                        FontWeight.bold),
                  ),
                  Text("16 Masr and Sudan Street, 2nd Industrial Zone, 10th of Ramadan City, Egypt".tr(),style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  Text("201069048848"+"+",style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  Text("201013661834"+"+",style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  Text("201227014747"+"+",style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  Text("0554498532",style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  Text("alfatemiaengines@gmail.com".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth/6,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Socials".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                 Row(
                   children: [
                     InkWell(
                         onTap: () async{
                           await launchUrl(
                             Uri.parse("https://www.facebook.com/alfatemiaengines.eg"),
                           );
                         },
                         child: Image.asset("assets/images/facebook.png",width: 30,height: 30,)
                     ),
                     const SizedBox(width: 10,),
                     InkWell(
                         onTap: () async{
                           await launchUrl(
                             Uri.parse("https://www.instagram.com/al_fatemia_engines/?next=%2F"),
                           );
                         },
                         child: Image.asset("assets/images/instagram.png",width: 30,height: 30,)
                     ),
                     const SizedBox(width: 10,),
                     InkWell(
                         onTap: ()async{
                           await launchUrl(
                             Uri.parse("https://www.tiktok.com/@al.fatemia.engine?_t=8liNT51oDDC&_r=1"),
                           );
                         },
                         child: Image.asset("assets/images/tik-tok.png",width: 30,height: 30,)
                     ),
                   ],
                 )
                ],
              ),
            ),
            SizedBox(
              width: screenWidth/6,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Inquiries".tr(),style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 10,),
                  Text("For any inquiries, questions or commendations, please contact us.".tr()
                    ,style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                  ),),

                ],
              ),
            ),
            CustomHoverButton(
                title: "Contact Us".tr(),
                height: 60,
                function: () {
                  navigator(
                    context: context,
                    route: ContactUsScreen.id
                  );
                },
                color: kPrimaryColor,
                hoverTextColor: Colors.black,
                hoverColor: Colors.white)
          ],
        )
      ],
    );
  }
}
