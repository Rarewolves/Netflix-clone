import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';

class MovieslistBuilder extends StatelessWidget {
  MovieslistBuilder({
   required this.title,
  this.shape=BoxShape.rectangle,
  this.height=161,
  this.width=103,
  this.fontsize=21,
  required this.Imagelist,
  
  
  
  });
  final String title;
  final BoxShape shape;
  final double height;
  final double width;
 final double  fontsize;
 final List<String> Imagelist;

 
  
  

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 16,bottom: 14),
            child: Text(title,style: TextStyle(fontSize: fontsize,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite),),
          ),
         SingleChildScrollView(scrollDirection: Axis.horizontal,
           child: Padding(
             padding: const EdgeInsets.only(left: 12),
             child: SizedBox(height: height,
               child: Row(
                children: 
                  List.generate(Imagelist.length, (index) =>Container(
                    height: height,width: width,
                    decoration: BoxDecoration(border: Border(right: BorderSide(width: 7)),
                    shape: shape,
                    image: DecorationImage(image: AssetImage(Imagelist[index]),fit:BoxFit.cover )
                    
                    
                  ) ,
                  child: Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Container(
                      height: 37,width: 103,
                      color:ColorConstant.boxblack,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Image.asset("assets/images/feather_info.png"),
                        Image.asset("assets/images/bx_bx-dots-vertical-rounded.png")
                      ],),
                    )
                  ],),
                  ),
                
               ),

             ),
             ),
           )
         )
        ],),
      ),
    );
  }
}