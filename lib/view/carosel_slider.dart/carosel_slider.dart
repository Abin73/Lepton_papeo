import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lepton_papeo/constant/constant.dart';
import 'package:lepton_papeo/fonts/googleMonstre.dart';
import 'package:lepton_papeo/menu_page.dart';
import 'package:lepton_papeo/view/colors/colors.dart';






List<String> imageList = [
  'assets/images/sapor.jpg',
  'assets/images/fish.jpg',
  'assets/images/food.jpg',
 
  // Add more image paths here
];

class Carosel extends StatelessWidget {
  // final List<Color> colors = [
  //   const Color.fromARGB(255, 91, 114, 163),
  //   const Color.fromARGB(255, 25, 42, 66),
   
  // ];
  Carosel({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.only(left: 20.w,right: 20.w),
        child: Scaffold(
          backgroundColor:
          //backgroundColor,
           const Color.fromARGB(205, 35, 57, 79),
               body: Center(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 460.h,
                
                autoPlay: true,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
              items: imageList.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25.w)),
                       // color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25.w)),
                       // color: Colors.grey,
                      ),
                            height: 260.h,
                            width: 450.w,
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
      
                                child: GoogleMonstserratWidgets(text: 'Our Specials :',
                                 fontsize: 15.w,color: cwhite),
                              ),
      
      
                              sw50,
                             TextButton.icon(
                              onPressed: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>MenuPage() ,));
                             }, 
                             icon: Icon(Icons.visibility),
                              label: GoogleMonstserratWidgets(
                                text: 'View menu', fontsize: 16.w))
                            ],
                          ),
                            
                          GoogleMonstserratWidgets(text: 'Time :', fontsize: 13.5.w,color: cwhite),
                          GoogleMonstserratWidgets(text: 'Location :', fontsize: 13.5.w,color: cwhite),
                          GoogleMonstserratWidgets(text: 'About :', fontsize: 13.5.w,color: cwhite),
      
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}












//         body: Center(
//           child: CarouselSlider(
//             options: CarouselOptions(
//               enlargeCenterPage: true,
//                           aspectRatio: 16 / 20
//             ),
//             items: colors.map((color) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Center(
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         gradient: LinearGradient(
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                           colors: [
//                             Color(0xFF181b2a),
//                             //  Color.fromARGB(255, 76, 98, 146),
//                             Color(0xFF23394f),
//                           ],
//                         ),
//                       ),
//                       child: 
//                       Container(
//                         height: 200,
//                         width: 200,
//                         child: Image.asset('assets/images/sapor.jpg',fit: BoxFit.cover,))
                      
//                       //Text("Hello",style: TextStyle(color: Colors.grey,fontSize: 30), ),
//                     ),
//                   );
//                 },
//               );
//             }).toList(),
//           ),
//         ),
       
//       ),
//     );
//   }
// }

