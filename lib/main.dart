import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_papeo/homepage/home_Page.dart';

void main() {
  runApp(const MyApp());
  ScreenUtil.ensureScreenSize();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(423.5294196844927, 945.8823706287004),
      builder: (context,child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'lepton papeo',
         
          home: 
          
          HalfHomePage()
        );
      }
    );
  }
}

