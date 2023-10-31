import 'package:flutter/material.dart';
import 'package:flutter_application_3/database/database.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';
import 'package:flutter_application_3/view/blank_screen/blank_screen.dart';


class MylistScreen extends StatelessWidget {
  
  const MylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblck,
      appBar: AppBar(toolbarHeight: 50,
      backgroundColor: ColorConstant.primaryblck,
      elevation: 0,
      title: SizedBox(height: 57,width: 151,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Image.asset("assets/images/logos_netflix-icon.png"),
          GestureDetector(onTap: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BlankScreen(),), (route) => false);
          },
            child: Text("My List",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),)),
           Image.asset("assets/images/Polygon 1.png")],
        ),
      ),
      ),
      body: 
        
        Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(itemCount:Database.myList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 9,crossAxisSpacing: 10,mainAxisExtent: 161), 
          itemBuilder:
          (context, index) => Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),image: DecorationImage(image: AssetImage(Database.myList[index]),fit: BoxFit.cover)),
          ), ),
        ),
      
     
    );
  }
}