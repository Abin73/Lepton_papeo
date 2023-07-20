// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lepton_papeo/view/colors/colors.dart';
// import 'package:lepton_papeo/view/constant/constant.dart';
// import 'package:lepton_papeo/view/fonts/googleMonstre.dart';

// import '../../../menu items page/menu_page.dart';

// List<String> imageList = [
//   'assets/images/sapor.jpg',
//   'assets/images/fish.jpg',
//   'assets/images/food.jpg',

//   // Add more image paths here
// ];

// class Carosel extends StatelessWidget {
//   // final List<Color> colors = [
//   //   const Color.fromARGB(255, 91, 114, 163),
//   //   const Color.fromARGB(255, 25, 42, 66),

//   // ];
//   Carosel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor:
//             //backgroundColor,
//             const Color.fromARGB(205, 35, 57, 79),
//         body: Center(
//           child: CarouselSlider(
//             options: CarouselOptions(
//               height: 460.h,
//               autoPlay: true,
//               enlargeCenterPage: true,
//               enableInfiniteScroll: true,
//             ),
//             items: imageList.map((imagePath) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Container(
//                     width: MediaQuery.of(context).size.width,
//                     margin: EdgeInsets.symmetric(horizontal: 5.0),
//                     decoration: BoxDecoration(
//                      // borderRadius: BorderRadius.all(Radius.circular(25.w)),
//                       // color: Colors.grey,
//                     ),
//                     child: Column(
//                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             border: Border.all(color: Colors.grey),
//                           ),
//                           height: 220,
//                           width: 450,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(
//                                 25.w), // half of the width/height
//                             child: Image.asset(
//                               imagePath,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),

//                         Row(
//                           children: [
//                             Container(
//                               child: GoogleMonstserratWidgets(
//                                   text: 'Our Specials :',
//                                   fontsize: 15.w,
//                                   color: cwhite),
//                             ),
//                             sw50,
//                             TextButton.icon(
//                                 onPressed: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => MenuPage(),
//                                       ));
//                                 },
//                                 icon: Icon(Icons.menu),
//                                 label: GoogleMonstserratWidgets(
//                                     text: ' menu', fontsize: 16.w))
//                           ],
//                         ),

//                         GoogleMonstserratWidgets(
//                             text: 'Time :', fontsize: 13.5.w, color: cwhite),
//                         GoogleMonstserratWidgets(
//                             text: 'Location :',
//                             fontsize: 13.5.w,
//                             color: cwhite),
//                         GoogleMonstserratWidgets(
//                             text: 'About :', fontsize: 13.5.w, color: cwhite),
//                       ],
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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_papeo/view/colors/colors.dart';
import 'package:lepton_papeo/view/constant/constant.dart';
import 'package:lepton_papeo/view/fonts/googleMonstre.dart';

import '../../../menu items page/menu_page.dart';

List<String> imageList = [
  'assets/images/sapor.jpg',
  'assets/images/fish.jpg',
  'assets/images/food.jpg',
  // Add more image paths here
];

class Carosel extends StatelessWidget {
  Carosel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        // const Color.fromARGB(205, 35, 57, 79),
        body: Container(
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(15.w))),
          margin: EdgeInsets.only(left: 1),
          child: Center(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 490.h,
                autoPlay: true,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
              items: imageList.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.w)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                              spreadRadius: 2,
                            ),
                          ],
                            color: backgroundColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              height: 220.h,
                              width: 450.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18.w),
                                child: Image.asset(
                                  imagePath,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left:15.w),
                              child: Row(
                                children: [
                                  Container(
                                    child: GoogleMonstserratWidgets(
                                      text: 'Our Specials:',
                                      fontsize: 15.w,
                                      color: cblack,
                                    ),
                                  ),
                                  sw50,
                                  TextButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MenuPage(),
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.menu),
                                    label: GoogleMonstserratWidgets(
                                      text: ' menu',
                                      fontsize: 16.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left:15.w),
                              child: Column(
                                children: [
                                  GoogleMonstserratWidgets(
                                    text: 'Time:',
                                    fontsize: 13.5.w,
                                    color: cblack,
                                  ),
                              sh20,
                              GoogleMonstserratWidgets(
                                text: 'Location:',
                                fontsize: 13.5.w,
                                color: cblack,
                              ),
                              sh20,
                              GoogleMonstserratWidgets(
                                text: 'About:',
                                fontsize: 13.5.w,
                                color: cblack,
                              ),
                              
                                ],
                              ),
                            ),
                          ],
                        ),
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
