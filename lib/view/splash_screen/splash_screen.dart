import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';
import 'package:flutter_application_3/utils/image_constant/image_constant.dart';
import 'package:flutter_application_3/view/username_screen/username_screen.dart';

class Splashscreen extends StatefulWidget {
   Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 4), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>UsernameScreen() ,));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: ColorConstant.primaryblck,
      body: SafeArea(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(
            child: Container(
              height: 56,
              width: 207,
              child: Image.asset(Imageconstant.netfliximage,color: ColorConstant.netflixcolor,),
            ),
          ),
          SizedBox(height: 50,),
          CircularProgressIndicator(color: ColorConstant.netflixcolor,)
             

      
        ],)
        
      ),
    );
  }
}