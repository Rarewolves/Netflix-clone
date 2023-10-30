import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/bottom_navigationbar.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';

import '../../../database/database.dart';

class UserNameCard extends StatelessWidget {
   UserNameCard({
    required this.index
  });
final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BottomNavigation(),), (route) => false);
    },
      child: Column(
        children: [
          Container(
            height: 92,
            width: 100,
            decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(7)),
                child: Image.asset(  Database.usernameimagelist[index]["image_url"],fit: BoxFit.cover,),
          ),
          SizedBox(height: 6),
          Text(
            Database.usernameimagelist[index]["name"],
            style: TextStyle(color: ColorConstant.primarywhite, fontSize: 13,fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
