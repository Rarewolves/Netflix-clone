import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';


class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblck,
      body: Padding(
        padding: const EdgeInsets.only(top: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Text(
                "Smart Downloads",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.primarywhite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 35),
              child: Text(
                "Introducing Downloads For You",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.primarywhite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12, right: 29),
              child: SizedBox(
                  child: Text(
                '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.''',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: ColorConstant.primarywhite,height: 1.5
                ),
                textAlign: TextAlign.justify,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Center(
                child: Container(
                  height: 177,
                  width: 177,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorConstant.searchbarcolor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: 40.9,
                  width: 353,
                  decoration: BoxDecoration(
                      color: ColorConstant.seablue,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                      child: Text(
                    "SETUP",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorConstant.primarywhite),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 49),
              child: Center(
                child: Container(
                  height: 33,
                  width: 239,
                  decoration: BoxDecoration(
                      color: ColorConstant.searchbarcolor,
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                      child: Text(
                    "Find Something to Download",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: ColorConstant.primarywhite),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
   
    );
  }
}
