import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:lepton_sapor/view/homepage/homepage.dart';
import 'package:lepton_sapor/view/menu%20items%20page/create_menu.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final screenNavigation = [              /////////////////////////////// Navigations
      CreateMenu(),

    ];
     final List<String> texts = [          //////////////////////////////// Names 
    'Create Menu',
    'Update Menu',
    'Demo', 
    'Demo2', 
    'Demo2',
    'Demo2',
    'Demo2',
    
  ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 91, 114, 163),
      appBar: AppBar(
        title: GoogleMonstserratWidgets(text: "Admin Panel", fontsize: 18.w),

        backgroundColor: 
        Color.fromARGB(255, 91, 114, 163),elevation: 0,
      ),
      body:  Column(
        children: [
          Container(
            height: 350.h,
            width: double.infinity,
            
            color: primary,
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: List.generate(texts.length, (index) {
                  return  GestureDetector(
                              onTap: () {
                                  Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) => screenNavigation[index],));
                              },
                    child: Padding(
                      padding:  EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          //color: Colors.grey,.
                          gradient: llGradient
                        ),
                        child:Column(
                          children: [
                            Center(child: GoogleMonstserratWidgets(text: texts[index], fontsize: 18.w,color: cwhite,)),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
          ),
        ],
      ),
    );
  }
}



