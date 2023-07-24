import 'dart:async';
import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_papeo/view/fonts/googleMonstre.dart';
import 'package:lepton_papeo/view/homepage/home_Page.dart';


import 'package:lepton_papeo/view/sruthi/Pages/homepage.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState(){
  //   _next();
  //   super.initState();
  // }
nextpage(){
  Timer(Duration(microseconds: 300), () {
   // Navigate.push(context,customPageTransition:PageTransitionEvent(child:HomePage(),ty)) ;
    }
    );
}

  @override
  Widget build(BuildContext context) {
    nextpage();
    

    return Scaffold(

      body: SafeArea(

          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Center(
            child: Container(
              height: 200.h,
              width: 200.w,
              decoration: const BoxDecoration(
          
                  image: DecorationImage(
                      image: AssetImage('assets/images/leptonlogo.png'))),
            ),
          ),
          GoogleMonstserratWidgets(text: 
            "Lepton Sapor",
            fontsize: 15,
           
          )
                ],
              )),
    );
  }
}

nextpage() async {
     const HalfHomePage();
}
