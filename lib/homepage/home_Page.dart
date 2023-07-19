
import 'package:botton_nav_bar/botton_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_papeo/carosel_slider.dart/carosel_slider.dart';
import 'package:lepton_papeo/colors/colors.dart';
import 'package:lepton_papeo/demo.dart';
import 'package:lepton_papeo/fonts/googleMonstre.dart';
import 'package:lepton_papeo/widget/iconbg_widget.dart';
import 'package:lepton_papeo/widget/search_bar.dart';
import 'package:lepton_papeo/widget/text_widget.dart';

class HalfHomePage extends StatelessWidget {
  const HalfHomePage({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
      appBar: PreferredSize(
         preferredSize: Size.fromHeight(80),
        child: AppBar(
          
          backgroundColor: 
           Colors.transparent,elevation: 0,
        
          leading:  Padding(
            padding:  EdgeInsets.only(left: 8.w),
            child: IconButton(onPressed: () {
                   
                 },
                 icon:  Icon(Icons.menu,color: cblack,size: 40.w,)),
          ),
            //   centerTitle: ,
          title: 
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: const [  
               SearchBarWidget(),  
             ],
           ),
           actions: [
             Container(
              margin: EdgeInsets.only(right: 15),
               child: IconButton(onPressed: () {
                   
                 },
                 icon: const Icon(Icons.shopping_cart,color: cblack,size: 40,)),
             ),
                    ],
        ),
      ),
        backgroundColor: cwhite,
        //backgroundColor,
       //  const Color.fromARGB(205, 35, 57, 79),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 800,
            //size.height,
            child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [  
                 Container(
                   height: 560,
                   width: double.infinity,
                   child: Carosel(),
                   ),
                Container(
                   //margin: EdgeInsets.only(left: 10),
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => SearchBar(),));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ScrollingCateogryWidget(
                            width: 150,
                            text: 'Breakfast',color: Colors.red),
                        )),
                     GestureDetector(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ScrollingCateogryWidget(
                            width: 150,
                            text: 'Lunch' ,color: Colors.green),
                        )),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ScrollingCateogryWidget(
                            width: 150,
                            text :'Dinner',color: Colors.purple ),
                        )),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ScrollingCateogryWidget(
                            width: 150,
                            text: 'Veg and Non',color: Colors.orange),
                        )),
                     
                    ],
                  ),
                ),
               
            // SizedBox(height: 20,),
            // TextButton.icon(onPressed: () {
              
            // }, 
            // icon: Icon(Icons.favorite_sharp,color: Colors.red),
            //  label: GoogleMonstserratWidgets(text: 'My Fav', fontsize: 18))
              ],
            ),
          ),
        ),
         bottomNavigationBar: const BottomNavBar(), 
      ),
    );
  }
}




class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTabTapped,
       backgroundColor: const Color.fromARGB(205, 35, 57, 79), // Set the background color here
      selectedItemColor: Colors.white, // Set the selected item color here
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Food',
        ),
        
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_sharp,
          color: Colors.red),
          label: 'My Fav',
        ),
        
     ],
);
}
}






class ScrollingCateogryWidget extends StatelessWidget {
   ScrollingCateogryWidget({
    this.color,
    required this.text,
    this.width,
    //this.colors,
    super.key,
  });
  Color? color;
  String text;
  
  double? width;
 
  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.only(left: 20,right: 20),
      decoration: BoxDecoration(
         gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF181b2a),
                          //  Color.fromARGB(255, 76, 98, 146),
                          Color(0xFF23394f),
                        ],
                      ),

        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15))),
      width: width,
      
      child: Center(
        child: GoogleMonstserratWidgets(
          fontsize: 14,
          text: text,color: cwhite),
      ),
     
    );
  }
}




