
import 'package:flutter/material.dart';

import 'package:flutter_application_3/database/database.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';
import 'package:flutter_application_3/utils/image_constant/image_constant.dart';


import 'widgets/user_name_card.dart';

class UsernameScreen extends StatelessWidget {
   UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: ColorConstant.primaryblck,
      appBar: AppBar(
        toolbarHeight: 120,
        elevation: 0,
        backgroundColor: ColorConstant.primaryblck,
        title: SizedBox(
            height: 38,
            width: 138,
            child: Image.asset(Imageconstant.netfliximage,color: ColorConstant.netflixcolor,),),
        centerTitle: true,
        actions: [
          Image.asset("assets/images/pencil1.png",color: ColorConstant.primarywhite,),
          
          ],
          
      ),
      body: Padding(
        padding: EdgeInsets.all(75),
        child: GridView.builder(
          itemCount: Database.usernameimagelist.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 25, mainAxisSpacing: 22,mainAxisExtent: 130
              ,),
          itemBuilder: (context, index) =>  index==Database.usernameimagelist.length ? 
         Column(children: [
          Container(height: 92,width: 100,
                decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(7)
                
                ),
                child: Image.asset(Imageconstant.user_add),
            ),
            SizedBox(height: 6,),
            Text("Add Profile",style: TextStyle(color: ColorConstant.primarywhite,fontSize: 14))
         ],)
          :
          UserNameCard(index:index),
        ),
      ),
    );
  }
}

