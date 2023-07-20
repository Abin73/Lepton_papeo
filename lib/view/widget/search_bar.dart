import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_papeo/view/colors/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
     width: 250.w,
     height: 45.h,
       decoration: BoxDecoration(
        // color: Colors.grey.shade200,
         borderRadius: BorderRadius.circular(10.0),
         border: Border.all(color: primary,width: 1),

       ),
       child:  TextField(
         //controller: ,
         decoration:  InputDecoration(
          fillColor: cblack,
           hintText: 'Search food',hintStyle: TextStyle(color: cblack,
           fontSize: 15.w
           ),
           border: InputBorder.none,
           prefixIcon: Icon(Icons.search,color: cblack,size: 25.w,),
          // contentPadding: EdgeInsets.all(16.0),
         ),
       ),
     );
  }
}