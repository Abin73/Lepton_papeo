
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_papeo/view/constant/constant.dart';
import 'package:lepton_papeo/view/drawer/drawer.dart';
import 'package:lepton_papeo/view/homepage/widgets/carosel_slider.dart/carosel_slider.dart';
import 'package:lepton_papeo/view/colors/colors.dart';
import 'package:lepton_papeo/view/fonts/googleMonstre.dart';
import 'package:lepton_papeo/view/sruthi/Pages/food_menu.dart';
import 'package:lepton_papeo/view/widget/search_bar.dart';


class HalfHomePage extends StatefulWidget {
  const HalfHomePage({super.key});

  @override
  State<HalfHomePage> createState() => _HalfHomePageState();
}

class _HalfHomePageState extends State<HalfHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(72.h),
          child: AppBar(
            backgroundColor: backgroundColor, elevation: 0,
            //cred,
            // Colors.transparent,elevation: 0,

             leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu,
              color: primary,
              size: 32.w,),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // This is to open the side drawer when the icon is pressed.
              },
            );
          },
        ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SearchBarWidget(),
              ],
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10.w),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: primary,
                      size: 36,
                    )),
              ),
            ],
          ),
        ),
        backgroundColor: backgroundColor,

       drawer: Drawer(

        child: DemoDrawer(),
      ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sh20,


                Container(
                  height: 450.h,
                  width: double.infinity,
                  child: Carosel(),  /////////////////////////////////////////  Carosel slider    
                ),
                sh50,
                
                // sh20,
                // sh20,
                

                 Container(
                 
                  
                   child: TabBar(
                    dividerColor: primary,
                     controller: _tabController,
                     tabs: [
                       Tab(child: Container(
                         decoration: BoxDecoration(
                    color: primary, 
                    borderRadius: BorderRadius.all(Radius.circular(10.w))
                    ),
                        child: Center(child: GoogleMonstserratWidgets(
                          text: 'Breakfast', fontsize: 13.w,color: cwhite,)))),


                       Tab(child:Container(
                         decoration: BoxDecoration(
                    color: primary, 
                    borderRadius: BorderRadius.all(Radius.circular(10.w))
                    ),
                        child: Center(child: GoogleMonstserratWidgets(text: 'Lunch', fontsize: 13.w,color: cwhite,))) ),


                       Tab(child:Container(
                         decoration: BoxDecoration(
                    color: primary, 
                    borderRadius: BorderRadius.all(Radius.circular(10.w))
                    ),   
                        child: Center(child: GoogleMonstserratWidgets(text: 'Dinner', fontsize: 13.w,color: cwhite,))),),
                       Tab(child:Container(
                         decoration: BoxDecoration(
                    color: primary, 
                    borderRadius: BorderRadius.all(Radius.circular(10.w))
                    ),child: Container(

                       child: Center(child: GoogleMonstserratWidgets(text: 'Special', fontsize: 13.w,color: cwhite,)))) ),
                     ],
                   ),
                 ),
                 // TabBarView to display the content for each tab
                 Expanded(
                   child: TabBarView(
                     controller: _tabController,
                     children: [
FoodMenu(),
                      //  ListViewBuilderWidget(
                      //   image: 'assets/images/sapor_bg.png',
                      //  text: 'Item ',
                      //  description: "description",
                      //  ),
                       
                    
                     ListViewBuilderWidget(
                        image: 'assets/images/fish.jpg',
                       text: 'Item ',
                       description: "description",
                       ),


                        ListViewBuilderWidget(
                        image: 'assets/images/curry.png',
                       text: 'Item ',
                       description: "description",
                       ),


                        ListViewBuilderWidget(
                        image: 'assets/images/food.jpg',
                       text: 'Item ',
                       description: "description",
                       ),



                     ],
                   ),
                 ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
   ListViewBuilderWidget({
    required this.image,
    required this.text,
    required this.description,

    super.key,
  });
  String image;
  String text;
  String description;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: 5, 
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                image,
                width: 48,
                height: 48,
              ),
              title: Text(text), 
              subtitle: Text(description), 
              onTap: () {
              
              },
            );
          },
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
      backgroundColor: primary,
      //Color(0XFFffd04e), // Set the background color here
      selectedItemColor: Colors.blue, // Set the selected item color here
      unselectedItemColor: cwhite,
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
          icon: Icon(Icons.favorite_sharp, color: Colors.red),
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
        child:
            GoogleMonstserratWidgets(fontsize: 14, text: text, color: cblack),
      ),
    );
  }
}
