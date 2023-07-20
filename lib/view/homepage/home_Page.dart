
import 'package:botton_nav_bar/botton_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_papeo/view/constant/constant.dart';
import 'package:lepton_papeo/view/homepage/widgets/carosel_slider.dart/carosel_slider.dart';
import 'package:lepton_papeo/view/colors/colors.dart';
import 'package:lepton_papeo/demo.dart';
import 'package:lepton_papeo/view/fonts/googleMonstre.dart';
import 'package:lepton_papeo/view/widget/iconbg_widget.dart';
import 'package:lepton_papeo/view/widget/search_bar.dart';
import 'package:lepton_papeo/view/widget/text_widget.dart';

class HalfHomePage extends StatelessWidget {
  const HalfHomePage({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        
      appBar: PreferredSize(
         preferredSize: Size.fromHeight(72.h),
        child: AppBar(
          
          backgroundColor: 
          backgroundColor,elevation: 0,
          //cred,
          // Colors.transparent,elevation: 0,
        
          leading:  Padding(
            padding:  EdgeInsets.only(left: 2.w),
            child: IconButton(onPressed: () {
                   
                 },
                 icon:  Icon(Icons.menu,color: primary,size: 30.w,)),
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
              margin: EdgeInsets.only(right: 10.w),
               child: IconButton(onPressed: () {
                   
                 },
                 icon: const Icon(Icons.shopping_cart,color: primary,size: 36,)),
             ),
                    ],
        ),
      ),
        backgroundColor: backgroundColor,
        //backgroundColor,
       //  const Color.fromARGB(205, 35, 57, 79),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 
            size.height,
            child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                  
              children: [  
                sh20,
                 Container(
                   height: 450.h,
                   width: double.infinity,
                   child: Carosel(),
                   ),
                   sh50,
                Container(
                   //margin: EdgeInsets.only(left: 10),
                  height: 60.h,
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
                            text: 'Breakfast',),
                        )),
                     GestureDetector(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ScrollingCateogryWidget(
                            width: 150,
                            text: 'Lunch' ,),
                        )),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ScrollingCateogryWidget(
                            width: 150,
                            text :'Dinner', ),
                        )),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ScrollingCateogryWidget(
                            width: 150,
                            text: 'Veg and Non',),
                        )),
                     
                    ],
                  ),
                ),
                sh20,
                sh20,
                 
                  Card(
  child: Column(
    children: [
      Image.asset('assets/images/food.jpg'),
      ListTile(
        title: Text('Breakfast'),
        subtitle: Text('items'),
        trailing: Icon(Icons.more_vert),
      ),
    ],
  ),
)
               
            
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
       backgroundColor: Color(0XFFffd04e), // Set the background color here
      selectedItemColor: cblack, // Set the selected item color here
      unselectedItemColor: cred,
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
                             Color(0XFFF2BC57),
    Color(0XFFF2BC57),


                        ],
                      ),

        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15))),
      width: width,
      
      child: Center(
        child: GoogleMonstserratWidgets(
          fontsize: 14,
          text: text,color: cblack),
      ),
     
    );
  }
}




