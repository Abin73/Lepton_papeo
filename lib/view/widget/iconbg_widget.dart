import 'package:flutter/material.dart';
import 'package:lepton_papeo/colors/colors.dart';

class IconBgWidget extends StatelessWidget {
  

   IconBgWidget({
     this.icon,
     this.color,
     this.size,
     this.height,
     this.width,
    super.key,
  });
   IconData? icon;
   double? size;
   Color? color;
   double? height;
   double? width;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
     margin: EdgeInsets.only(left: 15, right: 15),
       decoration: BoxDecoration(
          color: cwhite,
          borderRadius: BorderRadius.all(Radius.circular(10)),
         boxShadow: [
              BoxShadow(
     color: Color.fromARGB(255, 207, 206, 206).withOpacity(0.5),
     spreadRadius: 2,
     blurRadius: 5,
     offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
      child:
       Icon(icon,
       color: color,
       size: size,) 
    );
  }
}


