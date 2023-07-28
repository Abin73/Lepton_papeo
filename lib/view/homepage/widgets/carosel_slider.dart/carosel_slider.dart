import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:lepton_sapor/view/sruthi/Pages/food_menu.dart';


List<String> imageList = [
  'assets/images/sapor.jpg',
  'assets/images/fish.jpg',
  'assets/images/food.jpg',
  // Add more image paths here
];

  final List<String> letters = [
    "A",
    "grand.png",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];

class Carosel extends StatefulWidget {
  Carosel({Key? key}) : super(key: key);

  @override
  State<Carosel> createState() => _CaroselState();
}

class _CaroselState extends State<Carosel> {
   int currentPage = 0;
  late CarouselSliderController _sliderController;
  bool _isPlaying = true;
  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 91, 114,163),
        // const Color.fromARGB(205, 35, 57, 79),
        body: Center(
          child: 
          Padding(
            padding:  EdgeInsets.only(left: 15,right: 15),
            child: Container(
             // decoration: BoxDecoration(gradient: llGradient),
                  height: 1000.w,
                child: CarouselSlider.builder(
                  unlimitedMode: true,
                  controller: _sliderController,
                  slideBuilder: (index) {
                    return Container(
                      decoration: const BoxDecoration(
                        gradient: llGradient,
                       // color: colors[index],
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ), 
                      child: Container(
                        height: 300,
            
                        child: Column(
                          children: [
                            Container(
                                child:
                                Image.asset("assets/images/food.jpg",width: double.infinity,)),
                            Text(
                              letters[index],
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            sh20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 150.h,
                                  width: 260.w,
                                  //color: cred,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => FoodMenu1(),));
                                  },
                                  child: Container(
                                   // margin: EdgeInsets.only(left: 100),
                                    height: 45.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: cwhite),
                                     borderRadius: BorderRadius.all(Radius.circular(65)),
                                     color: Colors.blue,
                                    gradient: llGradient
                                    ),
                                    child: Center(child: 
                                    GoogleMonstserratWidgets(text: "Menu", fontsize: 15.w,color: cwhite,)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  slideTransform: CubeTransform(),
                  slideIndicator: CircularSlideIndicator(
                    padding: EdgeInsets.only(bottom: 32),
                    indicatorBorderColor: Colors.black,
                  ),
                  itemCount: colors.length,
                  initialPage: 0,
                  enableAutoSlider: true,
                ),
            ),
          ),
      
        ),
      ),
    );
  }
}
