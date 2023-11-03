

import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/image_constant/image_constant.dart';
import 'package:flutter_application_3/view/home_screen/widgets/infocard.dart';


class Database {
  static  List<Map>usernameimagelist =[
     {"image_url":Imageconstant.image_user1 ,"name":"Emenalo"},
     {"image_url" :Imageconstant.image_user2,"name":"Onyeka"},
      {"image_url":Imageconstant.image_user3,"name":"Thelma"},
      {"image_url":Imageconstant.image_user4,"name":"Kids"},
      
      
      
  ];
  static List<String> homescreenimagelist =[
    
     Imageconstant.image_home2,
     Imageconstant.image_home3,
   
     Imageconstant.image_home2,
     Imageconstant.image_home3,
      Imageconstant.image_home2,
     Imageconstant.image_home3,
   
     Imageconstant.image_home2,
     Imageconstant.image_home3,
    
  ];
  static List<String> homeimagelist =[
     Imageconstant.image_home4,
     Imageconstant.image_home5,
     Imageconstant.image_home6,
      Imageconstant.image_home4,
     Imageconstant.image_home5,
     Imageconstant.image_home6,
  
  ];
   static List<String> homepopularimagelist =[
   Imageconstant.image_home7,
   Imageconstant.image_home8,
   Imageconstant.image_home9,
    Imageconstant.image_home7,
   Imageconstant.image_home8,
   Imageconstant.image_home9,
    
  ];
  static List<Map> searchimagelist=[
    {"images":Imageconstant.search_screen1,"Name":"Citation"},
      {"images":Imageconstant.search_screen2,"Name":"Oloture"},
        {"images":Imageconstant.search_screen3,"Name":"The Setup"},
          {"images":Imageconstant.search_screen4,"Name":"Breaking Bad"},
            {"images":Imageconstant.search_screen5,"Name":"Ozark"},
              {"images":Imageconstant.search_screen6,"Name":"The Governor"},
                {"images":Imageconstant.search_screen7,"Name":"Your Excellency"},
                 {"images":Imageconstant.search_screen1,"Name":"Citation"},
      {"images":Imageconstant.search_screen2,"Name":"Oloture"},
        {"images":Imageconstant.search_screen3,"Name":"The Setup"},
          {"images":Imageconstant.search_screen4,"Name":"Breaking Bad"},
            {"images":Imageconstant.search_screen5,"Name":"Ozark"},
              {"images":Imageconstant.search_screen6,"Name":"The Governor"},
                {"images":Imageconstant.search_screen7,"Name":"Your Excellency"},
  ];

  static List<String> myList =[
    Imageconstant.mylist_1,
     Imageconstant.mylist_2,
      Imageconstant.mylist_3,
       Imageconstant.mylist_4,
        Imageconstant.mylist_5,
         Imageconstant.mylist_6,
          Imageconstant.mylist_7,
            Imageconstant.mylist_8,
              Imageconstant.mylist_9,
                Imageconstant.mylist_10,
                  Imageconstant.mylist_11,
                   Imageconstant.mylist_1,
     Imageconstant.mylist_2,
      Imageconstant.mylist_3,
       Imageconstant.mylist_4,
        Imageconstant.mylist_5,
         Imageconstant.mylist_6,
          Imageconstant.mylist_7,
            Imageconstant.mylist_8,
              Imageconstant.mylist_9,
                Imageconstant.mylist_10,
                  Imageconstant.mylist_11,


  ];

 static List<Map> comingsoonlist =[
  {"coming_img":Imageconstant.comingsoon_3,"title":"Castle & Castle","text":["Steamy","Soapy","Slow Burn","Suspenseful","Teen","Mystery","Legal","Steamy","Soapy","Slow Burn","Suspenseful","Teen","Mystery","Legal"]},
  {"coming_img":Imageconstant.comingsoon_4,"title":"Tiny Pretty Things","text":["Steamy","Soapy","Slow Burn","Suspenseful","Teen","Mystery"]},
  {"coming_img":Imageconstant.comingsoon_5,"title":"Tiny Pretty Things","text":["Steamy","Soapy","Slow Burn","Suspenseful","Teen","Mystery","Action"]},
 
 ];


 
 static List<Map> newarrivallist =[
  {"newarrival_img":Imageconstant.comingsoon_1,"title":"El Chapo","date":"Nov 6"},
    {"newarrival_img":Imageconstant.comingsoon_2,"title":"Peaky Blinders","date":"Nov 8"},
     

    
 ];
 static List<Map> homescreenlist = [
 {"title":"Previews","shape":BoxShape.circle,"height":102.toDouble(),"width":102.toDouble(),"fontsize":27.toDouble(),"Images":["assets/images/Rectangle 11.png","assets/images/Rectangle 11.png"]},
 {"title":"Continue Watching for Emenalo","Child":InfoCard(),"Images":["assets/images/Rectangle 11.png","assets/images/Rectangle 11.png",],"shape":BoxShape.rectangle,"height":161.toDouble(),"width":103.toDouble(),"fontsize":21.toDouble(),},
 {"title":"Continue Watching for Emenalo","Images":["assets/images/Rectangle 11.png","assets/images/Rectangle 11.png",],"shape":BoxShape.rectangle,"height":161.toDouble(),"width":103.toDouble(),"fontsize":21.toDouble(),},
 

 ];



 

 
  
  
}
