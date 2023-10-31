import 'package:flutter/material.dart';

import 'package:flutter_application_3/database/database.dart';

import 'package:flutter_application_3/utils/color_constant/color_constant.dart';
import 'package:flutter_application_3/utils/image_constant/image_constant.dart';
import 'package:flutter_application_3/view/home_screen/widgets/infocard.dart';
import 'package:flutter_application_3/view/home_screen/widgets/movies_list_buider.dart';
import 'package:flutter_application_3/view/mylist_screen/mylist_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblck,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 415,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Imageconstant.image_home0),
                        fit: BoxFit.cover),
                  ),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                                width: 53,
                                height: 57,
                                child: Image.asset(
                                    "assets/images/logos_netflix-icon.png")),
                            Text(
                              "TV Shows",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: ColorConstant.primarywhite),
                            ),
                            Text(
                              "Movies",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: ColorConstant.primarywhite),
                            ),
                            GestureDetector(onTap: () {
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MylistScreen(),), (route) => false);
                            },
                              child: Text(
                                "My List",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: ColorConstant.primarywhite),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "#2 in Nigeria Today",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.primarywhite),
                        ),
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                height: 45,
                width: 259,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/ant-design_plus-outlined.png",
                          color: ColorConstant.primarywhite,
                        ),
                        Text(
                          "My List",
                          style: TextStyle(
                              fontSize: 14, color: ColorConstant.primarywhite),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 111,
                      decoration: BoxDecoration(
                          color: ColorConstant.greybutton,
                          borderRadius: BorderRadius.circular(6)),
                      child: SizedBox(
                        width: 72,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/Vector.png",
                              color: ColorConstant.primaryblck,
                            ),
                            SizedBox(
                                width: 39,
                                height: 30,
                                child: Text(
                                  "Play",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: ColorConstant.primaryblck,
                                      fontWeight: FontWeight.w600),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/feather_info.png",
                          color: ColorConstant.primarywhite,
                        ),
                        Text(
                          "Info",
                          style: TextStyle(
                              fontSize: 14, color: ColorConstant.primarywhite),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            MovieslistBuilder(
              title: "Previews",
              shape: BoxShape.circle,
              height: 102,
              width: 102,
              fontsize: 27,
              Imagelist: Database.homescreenimagelist,
            ),
            MovieslistBuilder(
              title: "Continue Watching for Emenalo",
              Imagelist: Database.homeimagelist,
              child: InfoCard()                  

            ),
            MovieslistBuilder(
              title: "Popular on Netflix",
              Imagelist: Database.homepopularimagelist,
            
            )
          ],
        ),
      ),
    );
  }
}
