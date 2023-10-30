import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/bottom_navigationbar.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';
import 'package:flutter_application_3/view/mylist_screen/mylist_screen.dart';


class BlankScreen extends StatelessWidget {
   BlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblck,
     
      body: Center(
        child: Container(height: 212,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             GestureDetector(onTap: () {
               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BottomNavigation(),), (route) => false);
             },
              child: Text("All",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite),)),
            Text("TV Shows",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: ColorConstant.primarywhite),),
             Text("Movies",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite),),
              GestureDetector(onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MylistScreen(),), (route) => false);
              },
                child: Text("My List",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite),)),
             
          ],),
        ),

      ),
     

    );
  }
}