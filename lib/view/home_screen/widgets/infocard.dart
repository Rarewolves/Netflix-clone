import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';

class InfoCard extends StatelessWidget {
   InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisAlignment: MainAxisAlignment.end,
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
                  ],);
  }
}