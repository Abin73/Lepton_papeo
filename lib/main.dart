import 'package:flutter/material.dart';
//import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:lepton_sapor/signin/pages/google_signing_provider.dart';
import 'package:lepton_sapor/view/homepage/second_home.dart';
import 'package:provider/provider.dart'; 
import 'firebase_options.dart';
import 'view/homepage/homepage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
  ScreenUtil.ensureScreenSize();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(423.5294196844927, 945.8823706287004),
        builder: (context,child) {
        return 
        ChangeNotifierProvider<GoogleSignInProvider>(
         create: (BuildContext context) => GoogleSignInProvider(),
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'lepton sapor',
            home:   
            HomePage()
          ),
        );
      }
    );
  }
}

