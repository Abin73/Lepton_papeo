import 'package:flutter/material.dart';
import 'package:lepton_papeo/colors/colors.dart';
import 'package:lepton_papeo/fonts/googleMonstre.dart';

class TextBGWidget extends StatelessWidget {
   TextBGWidget({
    required this.text,
    super.key,
  });
   String text;
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 200,
     height: 50,
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
     child: Center(child: GoogleMonstserratWidgets(text: text, fontsize: 18)));
  }
}