import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';


class NewarrivalCard extends StatelessWidget {
  NewarrivalCard({required this.title,this.image,required this.date});
  final String title;
  final image;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: ColorConstant.searchbarcolor,
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Container(height: 55,width: 113,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image)),borderRadius: BorderRadius.circular(2)),
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text("New Arrival",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),),
              Text(title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),),
                Text(date,style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite.withOpacity(.48)),)
          ],),
        )
      ],),
    );
  }
}