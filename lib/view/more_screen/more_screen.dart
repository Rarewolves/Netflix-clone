import 'package:flutter/material.dart';
import 'package:flutter_application_3/database/database.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';
import 'package:flutter_application_3/utils/image_constant/image_constant.dart';


class MoreScreen extends StatelessWidget {
   MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblck,
      body:Padding(
        padding: const EdgeInsets.only(top: 82),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Row(
                children: List.generate(Database.usernameimagelist.length + 1, (index) => 
             index==Database.usernameimagelist.length ?
              Container(height: 69,width: 73,
                decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(3),border: Border.all(color: ColorConstant.grey)
                
                ),
                child: Image.asset(Imageconstant.mylist_12),
                        )
              :
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                    children: [
                Container(
                  height: 69,
                  width: 73,
                  decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(  Database.usernameimagelist[index]["image_url"],fit: BoxFit.cover,),
                ),
                SizedBox(height: 6),
                Text(
                  Database.usernameimagelist[index]["name"],
                  style: TextStyle(color: ColorConstant.primarywhite, fontSize: 12,fontWeight: FontWeight.w400),
                ),
                    ],
                  ),
              )
                
              )
              
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Image.asset("assets/images/bx_bxs-pencil.png"),
            ),
            Text("Manage Profiles",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: ColorConstant.primarywhite),)
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 11),
            child: Container(
              height: 247,
              color: ColorConstant.moreblack,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(
                    children: [
                    SizedBox(height: 24,width: 24,
                      child: Image.asset("assets/icons/chat1.png",color: ColorConstant.primarywhite,)),
                      SizedBox(width: 9,),
                    Text("Tell friends about Netflix.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite),)
                  ],),
                   Padding(
                     padding: const EdgeInsets.only(right: 16),
                     child: Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,""",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite,height: 1.5),textAlign: TextAlign.justify,),
                   ),
               Column(
                 children: [
                   Text("Terms & Conditions",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: ColorConstant.greybutton),),
                   Container(width: 98,height: 1,color: ColorConstant.greybutton,),
                 ],
               ),

               
               Row(
                children: [
                Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: Container(
                    height: 37,width: 247,
                    color: ColorConstant.primaryblck,
                  ),
                ),
                Container(
                  height: 37,width: 96,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: ColorConstant.primarywhite),
                  child: Center(child: Text("Copy Link",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: ColorConstant.primaryblck))),
                )
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 29,),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Container(
                    height: 34,width: 36,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),color: ColorConstant.green,image: DecorationImage(image: AssetImage("assets/images/logos_whatsapp.png"))),
                  ),
                  SizedBox(width: 4,),
                  Container(
                    height: 41,width: 1,color: ColorConstant.grey,
                  ),
                   SizedBox(width: 4,),
                   Container(
                    height: 34,width: 36,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: ColorConstant.darkblue,image: DecorationImage(image: AssetImage("assets/images/logos_facebook.png"))),
                  ),
                   SizedBox(width: 4,),
                  Container(
                    height: 41,width: 1,color: ColorConstant.grey,
                  ),
                   SizedBox(width: 4,),
                  Container(
                    height: 34,width: 36,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: ColorConstant.primarywhite,image: DecorationImage(image: AssetImage("assets/images/Gmail-logo 1.png"))),
                  ),
                   SizedBox(width: 4,),
                  Container(
                    height: 41,width: 1,color: ColorConstant.grey,
                  ),
                   SizedBox(width: 4,),
                  Column(children: [
                    Image.asset("assets/images/bx_bx-dots-vertical-rounded22.png"),
                    Text("More",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),),
                    
                  ],)
                  
                 ],),
               )
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3,left: 27),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Image.asset("assets/images/noto-v1_check-mark-button.png"),
              ),
               Text("My List",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26,top: 15),
            child: Container(height: 138,width: 86,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Text("App Settings ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),),
                      Text("Account",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),),
                         Text("Help",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),),
                            Text("Sign Out",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),)
              ],),
            ),
          ),
          
        ],),
      ),
     
    );
  }
}