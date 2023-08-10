import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:lepton_sapor/view/menu%20items%20page/create_menu.dart';
import 'package:lepton_sapor/view/menu%20items%20page/update_menu.dart';
import 'package:lepton_sapor/view/sruthi/Pages/food_menu.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenNavigation = [
      /////////////////////////////// Navigations
      CreateMenu(),
      const UpdateMenu(),
      const FoodMenu1(),
      CreateMenu(),
    ];

    var imageItems = [
      /////////////////////////////// Images
      'assets/images/menu2.png',
      'assets/images/update_menu.png',
      'assets/images/items.png',
      'assets/images/staffs.png',
    ];

    final List<String> texts = [
      //////////////////////////////// Names
      'Create/ Update Menu',
      'Daily Update',
      'Menu',
      'Staffs',
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 91, 114, 163),
      appBar: AppBar(
        title: GoogleMonstserratWidgets(text: "Admin Panel", fontsize: 18.w),
        backgroundColor: const Color.fromARGB(255, 91, 114, 163),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.w),
                color: primary,
              ),
              height: 350.h,
              width: double.infinity,
              child: Column(
                children: const [
                  //   Container(
                  //     height: 100.h,
                  //     width: 200.w,
                  // child: Image.asset('assets/images/sapor_bg_rem.png'),
                  //   )
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: List.generate(texts.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => screenNavigation[index],
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: llGradient),
                      child: Column(
                        children: [
                          sh10,
                          Container(
                            height: 75.w,
                            // width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imageItems[index]),
                              ),
                            ),
                          ),
                          sh20,
                          Container(
                              child: Center(
                                  child: GoogleMonstserratWidgets(
                            text: texts[index],
                            fontsize: 18.w,
                            color: cwhite,
                          ))),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AdminBottomNavBar(),
    );
  }
}

class AdminBottomNavBar extends StatefulWidget {
  const AdminBottomNavBar({super.key});

  @override
  _AdminBottomNavBarState createState() => _AdminBottomNavBarState();
}

class _AdminBottomNavBarState extends State<AdminBottomNavBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,

      currentIndex: _currentIndex,
      onTap: _onTabTapped,
      backgroundColor: const Color.fromARGB(255, 25, 42, 68),
      //Color(0XFFffd04e), // Set the background color here
      selectedItemColor: Colors.blue, // Set the selected item color here
      unselectedItemColor: cwhite,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.percent,
          ),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_sharp, color: Colors.red),
          label: 'My Fav',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insert_emoticon_outlined),
          label: 'My Sapor',
        ),
      ],
    );
  }
}
