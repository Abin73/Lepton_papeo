import 'package:flutter/material.dart';
import 'package:lepton_sapor/view/colors/colors.dart';


class MenuCatogery extends StatelessWidget {
  const MenuCatogery({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView.count(crossAxisSpacing: 12,
      mainAxisSpacing: 12,
        crossAxisCount: 2,
        children: List.generate(6, (index) =>
          Container(decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 91, 114, 163),boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.4),spreadRadius: 1,
              blurRadius: 1,
              
              
            )
          ]) ,child: Center(child: 
          Text(texts[index],style:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: cwhite) ,)),
          )
      )),
    );
    
  }
}
 const texts=["Biriyani",
 "Noodles",
 "Shawarma",
 "Shakes",
  "Alfam",
  "Mandhi",
  // "Biriyani",
  // "Biriyani",
  // "Biriyani",
  // "Biriyani",
  // "Biriyani",
  // "Biriyani",
  // "Biriyani",

 ];