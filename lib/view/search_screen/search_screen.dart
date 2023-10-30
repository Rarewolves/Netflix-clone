import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/bottom_navigationbar.dart';
import 'package:flutter_application_3/database/database.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';



class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: ColorConstant.primaryblck,
       
       body: Padding(
         padding: const EdgeInsets.only(top: 44),
         child: SingleChildScrollView(
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
             Container(height: 52,width: double.infinity,
             decoration: BoxDecoration(color: ColorConstant.searchbarcolor,),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: 'Search for a show, movie, genre ,e.t.c.',
                   hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: ColorConstant.searctextcolor),
                   border: InputBorder.none,
                   suffixIcon: IconButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>BottomNavigation())), icon: Image.asset("assets/images/ic_baseline-mic.png"),),
                   prefixIcon: Image.asset("assets/images/ant-design_search-outlined.png"),

                 ),
               )
               ),
               Padding(
                 padding: const EdgeInsets.only(top:21,left: 10,bottom: 21),
                 child: Text("Top Searches",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite),),
               ),
               Column(
                children: List.generate(Database.searchimagelist.length, (index) =>  Container(
                  height: 76,
                  decoration: BoxDecoration(color:ColorConstant.searchbarcolor,
                  border: Border(bottom: BorderSide(width: 3))),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Container(
                      height: 76,
                      width: 146,
                      child: Image.asset(Database.searchimagelist[index]["images"]),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(Database.searchimagelist[index]["Name"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite)),
                        Image.asset("assets/images/bx_bx-play-circle.png")
                        ],),
                      ),
                    )
                  ],)
                ),
             
             ),
               )
            
         
           ],),
         ),
       )
       
       );
  
  }
}
