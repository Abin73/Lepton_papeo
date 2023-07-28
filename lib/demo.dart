import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/utils/utils.dart';

/// Flutter code sample for [showTimePicker].

// class ShowTimePickerApp extends StatefulWidget {
//   const ShowTimePickerApp({super.key});

//   @override
//   State<ShowTimePickerApp> createState() => _ShowTimePickerAppState();
// }

// class _ShowTimePickerAppState extends State<ShowTimePickerApp> {
//   ThemeMode themeMode = ThemeMode.dark;
//   bool useMaterial3 = true;

//   void setThemeMode(ThemeMode mode) {
//     setState(() {
//       themeMode = mode;
//     });
//   }

//   void setUseMaterial3(bool? value) {
//     setState(() {
//       useMaterial3 = value!;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.light(useMaterial3: useMaterial3),
//       darkTheme: ThemeData.dark(useMaterial3: useMaterial3),
//       themeMode: themeMode,
//       home: TimePickerOptions(
//         themeMode: themeMode,
//         useMaterial3: useMaterial3,
//         setThemeMode: setThemeMode,
//         setUseMaterial3: setUseMaterial3,
//       ),
//     );
//   }
// }










// Your timePicker function and helper functions (unchanged)...

// Future<String> timePicker(BuildContext context) async {
//   final TimeOfDay? time =
//       await showTimePicker(context: context, initialTime: TimeOfDay.now());
//   if (time != null) {
//     // Get the current time of day using Dart's DateTime class

//     // Convert the TimeOfDay object to a custom 12-hour format with AM/PM
//     String formattedTime =
//         '${_getFormattedHour(time)}:${time.minute.toString().padLeft(2, '0')} ${_getAmPm(time)}';

//     return formattedTime;
//   } else {
//     return "";
//   }
// }

// String _getAmPm(TimeOfDay timeOfDay) {
//   return timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';
// }

// String _getFormattedHour(TimeOfDay timeOfDay) {
//   String hour =
//       (timeOfDay.hourOfPeriod == 0 ? 12 : timeOfDay.hourOfPeriod).toString();
//   return hour;
// }




// import 'package:flutter/material.dart';
// import 'package:text_scroll/text_scroll.dart';

// class TextScrollEx extends StatefulWidget {
//   const TextScrollEx({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   State<TextScrollEx> createState() => _TextScrollExState();
// }

// class _TextScrollExState extends State<TextScrollEx> {
//   bool _clicked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: ConstrainedBox(
//           constraints: const BoxConstraints(maxWidth: 400),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Row(
//                 children: const [
//                   Flexible(
//                     child: TextScroll(
//                       'This is the sample text for Flutter TextScroll widget.',
//                       intervalSpaces: 10,
//                       velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
//                     ),
//                   ),
//                   SizedBox(width: 4),
//                   Expanded(
//                     child: SizedBox(),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: const [
//                   Expanded(flex: 2, child: Text('Static text')),
//                   Flexible(
//                     flex: 1,
//                     child: TextScroll(
//                       'This is the sample text for Flutter TextScroll widget. ',
//                       velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
//                       pauseBetween: Duration(milliseconds: 1000),
//                       mode: TextScrollMode.bouncing,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               const TextScroll(
//                 'This is the sample text for Flutter TextScroll widget. '
//                 'This is the sample text for Flutter TextScroll widget.',
//                 mode: TextScrollMode.bouncing,
//                 numberOfReps: 200,
//                 delayBefore: Duration(milliseconds: 2000),
//                 pauseBetween: Duration(milliseconds: 1000),
//                 velocity: Velocity(pixelsPerSecond: Offset(100, 0)),
//                 style: TextStyle(decoration: TextDecoration.underline),
//                 textAlign: TextAlign.right,
//                 selectable: true,
//               ),
//               const SizedBox(height: 20),
//               const TextScroll(
//                 'Hey! I\'m a RTL text, check me out. Hey! I\'m a RTL text, check me out. Hey! I\'m a RTL text, check me out. ',
//                 textDirection: TextDirection.rtl,
//               ),
//               const SizedBox(height: 20),
//               const TextScroll(
//                 'This is the sample text for Flutter TextScroll widget with faded border.',
//                 intervalSpaces: 10,
//                 velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
//                 fadedBorder: true,
//                 fadeBorderVisibility: FadeBorderVisibility.auto,
//                 fadeBorderSide: FadeBorderSide.both,
//               ),
//               const SizedBox(height: 20),
//               GestureDetector(
//                 onTap: () {
//                   setState(() => _clicked = true);
//                 },
//                 child: TextScroll(
//                   'Click me to start scrolling. Click me to start scrolling. Click me to start scrolling. Click me to start scrolling. ',
//                   velocity: Velocity(
//                     pixelsPerSecond: Offset(_clicked ? 150 : 0, 0),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


















// import 'package:flutter/material.dart';


// class ListtileExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(onPressed: () {
//             Navigator.pop(context);
//           }, 
//           icon: Icon(Icons.arrow_back)),
//           title: Text('ListTile with Image Example'),
//         ),
//         body: Container(
//           width: 250,
//           child: ListView.builder(
//             itemCount: 5, // Replace this with the actual number of list items.
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading: Image.asset(
//                   'assets/images/sapor_bg.png', // Replace with your image assets path.
//                   width: 48,
//                   height: 48,
//                 ),
//                 title: Text('Item ${index + 1}'), // Replace this with your list item text.
//                 subtitle: Text('Description of Item ${index + 1}'), // Replace this with your list item description if needed.
//                 onTap: () {
//                   // Do something when the ListTile is tapped.
//                 },
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:lepton_papeo/view/fonts/googleMonstre.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lepton_papeo/view/colors/colors.dart';
// import 'package:lepton_papeo/view/constant/constant.dart';
// import 'package:lepton_papeo/view/fonts/googleMonstre.dart';
// import 'package:lepton_papeo/view/menu%20items%20page/menu_page.dart';

// List<String> imageList = [
//   'assets/images/sapor.jpg',
//   'assets/images/fish.jpg',
//   'assets/images/food.jpg',
//   // Add more image paths here
// ];

// class SildeCar extends StatelessWidget {
//   final List<String> imagesList = [
//     'https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062_1280.jpg',
//     'https://cdn.pixabay.com/photo/2016/06/07/01/49/ice-cream-1440830_1280.jpg',
//     'https://cdn.pixabay.com/photo/2017/12/27/07/07/brownie-3042106_1280.jpg',
//     'https://cdn.pixabay.com/photo/2018/02/25/07/15/food-3179853_1280.jpg',
//     'https://cdn.pixabay.com/photo/2015/10/26/11/10/honey-1006972_1280.jpg',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Image Carousel Example '),
//       ),
//       body: CarouselSlider(
//         options: CarouselOptions(
//           viewportFraction: 0.6,
//           autoPlayAnimationDuration: const Duration(milliseconds: 100),
//           autoPlay: true,
//           enlargeCenterPage: true,
//         ),
//         items: imagesList
//             .map(
//               (item) => Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(color: Colors.grey),
//                                 ),
//                                 height: 220.h,
//                                 width: 450.w,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(18.w),
//                                   child: Image.asset(
//                                     imagePath,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:  EdgeInsets.only(left:15.w,top: 20.h),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       child: GoogleMonstserratWidgets(
//                                         text: 'Our Specials:',
//                                         fontsize: 15.w,
//                                         color: cblack,
//                                       ),
//                                     ),
//                                     sw50,
//                                     TextButton.icon(
//                                       onPressed: () {
//                                         Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                             builder: (context) => MenuPage(),
//                                           ),
//                                         );
//                                       },
                                      
//                                       label: GoogleMonstserratWidgets(
//                                         text: ' ',
//                                         fontsize: 16.w,
//                                       ),
//                                       icon: Icon(Icons.arrow_forward,size: 32.w),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding:  EdgeInsets.only(left:15.w,top: 20.h),
//                                 child: Column(
//                                   children: [
//                                     GoogleMonstserratWidgets(
//                                       text: 'Time:',
//                                       fontsize: 13.5.w,
//                                       color: cblack,
//                                     ),
//                                 sh20,
//                                 GoogleMonstserratWidgets(
//                                   text: 'Location:',
//                                   fontsize: 13.5.w,
//                                   color: cblack,
//                                 ),
//                                 sh20,
//                                 GoogleMonstserratWidgets(
//                                   text: 'About',
//                                   fontsize: 13.5.w,
//                                   color: cblack,
//                                 ),
//                                // SizedBox(height: 20.h,)
                                
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//             )
//             .toList(),
//       ),
//     );
//   }
// }






// // import 'package:flutter/material.dart';
// // import 'package:flutter/cupertino.dart';

// // List<Tab> _tabs = [
// //   Tab(text: 'Tab 1'),
// //   Tab(text: 'Tab 2'),
// //   Tab(text: 'Tab 3'),
// // ];

// // List<Widget> _tabViews = [
// //   // Your content for Tab 1
// //   Center(child: Text('Tab 1 Content')),
// //   // Your content for Tab 2
// //   Center(child: Text('Tab 2 Content')),
// //   // Your content for Tab 3
// //   Center(child: Text('Tab 3 Content')),
// // ];


// // class CustomTabIndicator extends Decoration {
// //   @override
// //   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
// //     return _CustomPainter(this);
// //   }
// // }

// // class _CustomPainter extends BoxPainter {
// //   final CustomTabIndicator _indicator;

// //   _CustomPainter(this._indicator);

// //   @override
// //   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
// //     final Rect rect = offset & configuration.size!;
// //     final Paint paint = Paint();
// //     paint.color = Colors.blue; // Customize the color of the indicator here
// //     paint.style = PaintingStyle.fill;
// //     canvas.drawRect(
// //       Rect.fromLTWH(rect.left, rect.bottom - 3.0, rect.width, 3.0),
// //       paint,
// //     );
// //   }
// // }

// // class CustomTabBar extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: _tabs.length,
// //       child: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Custom TabBar'),
// //           bottom: TabBar(
// //             tabs: _tabs,
// //             indicator: CustomTabIndicator(), // Use the custom indicator here
// //           ),
// //         ),
// //         body: TabBarView(
// //           children: _tabViews,
// //         ),
// //       ),
// //     );
// //   }
// // }



// // // import 'package:flutter/material.dart';

// // // class SearchBar extends StatelessWidget {
// // //   final TextEditingController _searchController = TextEditingController();

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: SafeArea(
// // //         child: Scaffold(
// // //           body: Padding(
// // //             padding: const EdgeInsets.all(16.0),
// // //             child: Column(
// // //               children: [
// // //                 Container(
// // //                   decoration: BoxDecoration(
// // //                     color: Colors.grey.shade200,
// // //                     borderRadius: BorderRadius.circular(10.0),
// // //                   ),
// // //                   child: TextField(
// // //                     controller: _searchController,
// // //                     decoration: const InputDecoration(
// // //                       hintText: 'Search',
// // //                       border: InputBorder.none,
// // //                       prefixIcon: Icon(Icons.search),
// // //                       contentPadding: EdgeInsets.all(16.0),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 SizedBox(height: 16.0),
// // //                 Expanded(
// // //                   // Add your content widgets here
// // //                   child: Container(),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
