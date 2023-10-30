import 'package:flutter/material.dart';
import 'package:flutter_application_3/database/database.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';

import 'package:flutter_application_3/view/comingsoon_screen/widgets/newarrivalcard.dart';
import 'package:flutter_application_3/view/comingsoon_screen/widgets/notificationcard.dart';


class ComingSoonscreen extends StatelessWidget {
   ComingSoonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblck,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 57),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(height: 19,width: 125,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(height: 19,width: 19,
                           decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Ellipse 6.png"))),
                           child: Image.asset("assets/images/bi_bell-fill.png"),
                    ),
                    Text("Notifications",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite),)
                ],),
              ),
            ),
            ListView.builder(itemCount: Database.newarrivallist.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemBuilder: (context, index) => NewarrivalCard(title: Database.newarrivallist[index]["title"],image:Database.newarrivallist[index]["newarrival_img"] ,date: Database.newarrivallist[index]["date"],),),
           
           ListView.builder(
            physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
            itemCount: Database.comingsoonlist.length,
            itemBuilder: (context, index) =>    NotificationCard(images: Database.comingsoonlist[index]["coming_img"],title: Database.comingsoonlist[index]["title"],mylist: [Database.comingsoonlist[index]["text"]]),),

          ],),
        ),
      ),

       
    );
  }
}
 