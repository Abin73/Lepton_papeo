import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var ScreenSize  = MediaQuery.of(context).size;
    return Container(
     // margin: EdgeInsets.only(top: 10.h),
     width: ScreenSize.width/1.6,
     height: 45.h,
       decoration: BoxDecoration(
         color: Color.fromARGB(255, 3, 5, 8),
         borderRadius: BorderRadius.circular(10.0),
         border: Border.all(color: cwhite,width: 1),

       ),
       child:  TextFormField(
        
         //controller: ,
         decoration:  InputDecoration(
          fillColor: cwhite,
         
           hintText: 'Search food',hintStyle: TextStyle(color: cwhite,
       
           fontSize: 15.w
           ),
           border: InputBorder.none,
           prefixIcon: Icon(Icons.search,color: cwhite,size: 25.w,),
          // contentPadding: EdgeInsets.all(16.0),
         ),
         style: TextStyle(color: cwhite),
       ),
     );
  }
}