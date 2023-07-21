import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.count(crossAxisCount: 2,shrinkWrap: true,childAspectRatio: 0.76, crossAxisSpacing: 12,
          mainAxisSpacing: 12,
    children: [
      for(int i =1;i<5;i++)
      Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber,boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),spreadRadius: 1,
            blurRadius: 1,
            
          )
        ]) ,
        child: Column(children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "SigleItemPage");
            },
            child: Container(),
          )
        ],),
      )
    ],);
    
  }
}