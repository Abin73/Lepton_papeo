import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:lepton_papeo/view/colors/colors.dart';
import 'package:lepton_papeo/view/fonts/googleMonstre.dart';


class DemoDrawer extends StatelessWidget {
  DemoDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
      return Container(
      color: Colors.grey.withOpacity(0.2),
      width: double.infinity,
      height: 350.h,
      padding:  EdgeInsets.only(top: 80.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        
          Container(
            margin: const EdgeInsets.only(bottom: 0),
            height: 90,
            width: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:
                AssetImage('assets/images/sapor_bg.png')
                //  NetworkImage(
                //     "https://firebasestorage.googleapis.com/v0/b/leptonscipro-31792.appspot.com/o/files%2Fimages%2FL.png?alt=media&token=135e14d0-fb5a-4a21-83a6-411f647ec974"
                //     ),
              ),
            ),
          ),
          Text(
            "Lepton Sapor",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "buon Appetito!",
            style: GoogleFonts.poppins(
                color: Colors.orange.withOpacity(0.5),
                fontSize: 22.w,
                fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextButton.icon(
                  onPressed: () async {
                   
                  },
                  icon:  Icon(Icons.exit_to_app,color: primary,size: 26.w),
                  label:  Text(
                    'Logout',
                    style:  TextStyle(color: cblack,fontSize: 16.w),
                  ))
            ],
          ),
         Container(
          margin: EdgeInsets.only(top: 40.w),
          height: 410.h,
          color: Colors.white70,
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          
          ListTile(
            leading: Icon(Icons.home,color: primary,size: 25.w),
            title: GoogleMonstserratWidgets(text: 'Home',fontsize: 15.w,fontWeight:FontWeight.w600,color: primary),
            onTap: () {
            
            },
          ),
          
                    ListTile(
            leading: Icon(Icons.food_bank,color: primary,size: 25.w),
            title: GoogleMonstserratWidgets(text: 'Specials',fontsize: 15.w,fontWeight:FontWeight.w600,color: primary),
            onTap: () {
            
            },
          ),
                    ListTile(
            leading: Icon(Icons.menu_book,color: primary,size: 25.w),
            title: GoogleMonstserratWidgets(text: 'Menu',fontsize: 15.w,fontWeight:FontWeight.w600,color: primary),
            onTap: () {
            
            },
          ),
                    ListTile(
            leading: Icon(Icons.delivery_dining,color: primary,size: 25.w),
            title: GoogleMonstserratWidgets(text: 'Orders',fontsize: 15.w,fontWeight:FontWeight.w600,color: primary),
            onTap: () {
            
            },
          ),
          ListTile(
            leading: Icon(Icons.settings,color: primary,size: 25.w),
            title: GoogleMonstserratWidgets(text: 'Settings',fontsize: 15.w,fontWeight:FontWeight.w600,color: primary),
            onTap: () {
              
            },
          ),
            ListTile(
            leading: Icon(Icons.info_outlined,color: primary,size: 25.w),
            title: GoogleMonstserratWidgets(text: 'About',fontsize: 15.w,fontWeight:FontWeight.w600,color: primary),
            onTap: () {
            
            },
          ),
        
        ],
      ),
         ),
            Container(
          color: Colors.transparent
          ,
          height: 170.h,
          width: double.infinity,
          child: Stack(children: [
            Positioned(
              left: 20,
              top: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children:  [
                      Text(
                        "Developed by",
                        style: TextStyle(
                          fontSize: 18.w,
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              
            ),
            Positioned(
                top: 38,
                left: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/leptonscipro-31792.appspot.com/o/files%2Fimages%2FL.png?alt=media&token=135e14d0-fb5a-4a21-83a6-411f647ec974'),
                    ),
                    SizedBox(
                      width: 06,
                    ),
                    Text(
                      "Lepton Communications",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.5),
                    ),
                  ],
                )),
          
          ]),
        )  
             
        ],
      ),
    );
  }
}

