import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';

class NotificationCard extends StatelessWidget {
   NotificationCard({required this.title,this.images,required this.mylist,});
  final  images;
  final String title;
  final List<String> mylist;
 
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Container(
      
        color: ColorConstant.primaryblck,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            height: 195,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(images),fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 241,top: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
                children: [
                  Image.asset("assets/images/bi_bell-fill (1).png"),
                  SizedBox(height: 7,),
                  Text("Remind Me",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite.withOpacity(.83)),)
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/images/bx_bxs-share-alt.png"),
                  SizedBox(height: 7.11,),
                  Text("Share",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite.withOpacity(.83)),),
                 
                ],
              ),
            ],),
          ),
           Padding(
             padding: const EdgeInsets.only(left: 12,top: 13),
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               Text("Season 1 Coming December 14",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite.withOpacity(.83)),),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Text(title,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite),),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 8,top: 13),
                   child: Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.""",
                   style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite.withOpacity(.83),height:1.4 ),textAlign: TextAlign.justify,),
                 ),
                 SizedBox(height: 16,),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(children: List.generate(
              mylist.length, (index) =>    Row(children: [
                     Text(mylist[index],style: TextStyle(fontSize: 11,fontWeight: FontWeight.w600,color: ColorConstant.primarywhite),),
                     SizedBox(width: 5,),
                     CircleAvatar(backgroundColor: ColorConstant.primarywhite.withOpacity(.69),radius: 2,),
                     SizedBox(width: 5,),
                   
                   ],))
            ),
          )
                 
              
             ],),
           )
        ],),
      ),
    );
  }
}