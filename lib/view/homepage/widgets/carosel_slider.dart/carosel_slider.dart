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


import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_papeo/view/colors/colors.dart';


List<String> imageList = [
  'assets/images/sapor.jpg',
  'assets/images/fish.jpg',
  'assets/images/food.jpg',
  // Add more image paths here
];

  final List<String> letters = [
    "A",
    "grand.png",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];

class Carosel extends StatefulWidget {
  Carosel({Key? key}) : super(key: key);

  @override
  State<Carosel> createState() => _CaroselState();
}

class _CaroselState extends State<Carosel> {
   int currentPage = 0;
  late CarouselSliderController _sliderController;
  bool _isPlaying = true;
  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        // const Color.fromARGB(205, 35, 57, 79),
        body: Center(
          child: 
          Padding(
            padding:  EdgeInsets.all(20),
            child: Container(
                height: 500.w,
                child: CarouselSlider.builder(
                  unlimitedMode: true,
                  controller: _sliderController,
                  slideBuilder: (index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: colors[index],
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ), //BorderRadi),
                      //alignment: Alignment.center,
                      child: Container(
                        height: 300,
                        //width: 400,
                        //color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                                child:
                                Image.asset("assets/images/food.jpg",width: double.infinity,)),
                            Text(
                              letters[index],
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  slideTransform: CubeTransform(),
                  slideIndicator: CircularSlideIndicator(
                    padding: EdgeInsets.only(bottom: 32),
                    indicatorBorderColor: Colors.black,
                  ),
                  itemCount: colors.length,
                  initialPage: 0,
                  enableAutoSlider: true,
                ),
            ),
          ),
          
          
          
          
          
          // Container(
          //   width: MediaQuery.of(context).size.width*0.83,
          //   height: 1200.h,
          //   decoration: BoxDecoration(
          //       color: backgroundColor,
          //       borderRadius: BorderRadius.all(Radius.circular(15.w))),
          //   margin: EdgeInsets.only(left: 1),
          //   child: Center(
          //     child: 
              
          //     CarouselSlider(
          //       options: CarouselOptions(
          //         height: 1000.h,
          //       autoPlay: true,
          //        // autoPlay: true,
          //         aspectRatio: 4/5,
          //         enlargeCenterPage: true,
          //         enableInfiniteScroll: true,
          //       ),
          //       items: imageList.map((imagePath) {
          //         return Builder(
          //           builder: (BuildContext context) {
          //             return Padding(
          //               padding: const EdgeInsets.only(bottom: 20),
          //               child: Container(
          //                 width: MediaQuery.of(context).size.width,
          //                 margin: EdgeInsets.symmetric(horizontal: 5.0),
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.all(Radius.circular(16.w)),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: Colors.grey.withOpacity(0.9),
          //                       offset: Offset(0, 3),
          //                       blurRadius: 6,
          //                       spreadRadius: 2,
          //                     ),
          //                   ],
          //                     color: backgroundColor,
          //                 ),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Container(
          //                       decoration: BoxDecoration(
          //                         shape: BoxShape.circle,
          //                         border: Border.all(color: Colors.grey),
          //                       ),
          //                       height: 220.h,
          //                       width: 450.w,
          //                       child: ClipRRect(
          //                         borderRadius: BorderRadius.circular(18.w),
          //                         child: Image.asset(
          //                           imagePath,
          //                           fit: BoxFit.fill,
          //                         ),
          //                       ),
          //                     ),
          //                     Padding(
          //                       padding:  EdgeInsets.only(left:15.w,top: 20.h),
          //                       child: Row(
          //                         children: [
          //                           Container(
          //                             child: GoogleMonstserratWidgets(
          //                               text: 'Our Specials:',
          //                               fontsize: 15.w,
          //                               color: cblack,
          //                             ),
          //                           ),
          //                           sw50,
          //                           TextButton.icon(
          //                             onPressed: () {
          //                               Navigator.push(
          //                                 context,
          //                                 MaterialPageRoute(
          //                                   builder: (context) => FoodMenu(),
          //                                 ),
          //                               );
          //                             },
                                      
          //                             label: GoogleMonstserratWidgets(
          //                               text: 'Menu',
          //                               fontsize: 16.w,
          //                             ),
          //                             icon: Icon(Icons.arrow_forward,size: 32.w),
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                     Padding(
          //                       padding:  EdgeInsets.only(left:15.w,top: 20.h),
          //                       child: Column(
          //                         children: [
          //                           GoogleMonstserratWidgets(
          //                             text: 'Time:',
          //                             fontsize: 13.5.w,
          //                             color: cblack,
          //                           ),
          //                       sh20,
          //                       GoogleMonstserratWidgets(
          //                         text: 'Location:',
          //                         fontsize: 13.5.w,
          //                         color: cblack,
          //                       ),
          //                       sh20,
          //                       GoogleMonstserratWidgets(
          //                         text: 'About  ',
                        
          //                         fontsize: 13.5.w,
          //                         color: cblack,
          //                       ),
          //                      // SizedBox(height: 20.h,)
                                
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             );
          //           },
          //         );
          //       }).toList(),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
