import 'package:flutter/material.dart';
import 'package:lepton_papeo/colors/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 13),
     width: 260,
     height: 45,
       decoration: BoxDecoration(
        // color: Colors.grey.shade200,
         borderRadius: BorderRadius.circular(10.0),
         border: Border.all(color: cblack,width: 2),

       ),
       child: const TextField(
         //controller: ,
         decoration:  InputDecoration(
          fillColor: cblack,
           hintText: 'Search restaurants',hintStyle: TextStyle(color: cblack,
           
           ),
           border: InputBorder.none,
           prefixIcon: Icon(Icons.search,color: cblack),
          // contentPadding: EdgeInsets.all(16.0),
         ),
       ),
     );
  }
}