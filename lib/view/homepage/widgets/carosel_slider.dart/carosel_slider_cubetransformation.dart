
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';


class sap extends StatefulWidget {
  const sap({Key? key}) : super(key: key);

  @override
  State<sap> createState() => _sapState();
}

class _sapState extends State<sap> {
  GlobalKey bottomNavigationKey = GlobalKey();
  int currentPage = 0;
  late CarouselSliderController _sliderController;
  final List<Color> colors = [
    Color(0xFF083663),
    Color(0xFF083663),
    Color(0xFF083663),
    Color(0xFF083663),
    Color(0xFF083663),
    Color(0xFF083663),
    Color(0xFF083663),
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

  bool _isPlaying = true;
  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Sapor"),
      ),
        body:Column(
      children: [
        Column(
          children: [
            Container(
              height: 500,
              child: CarouselSlider.builder(
                unlimitedMode: true,
                controller: _sliderController,
                slideBuilder: (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: colors[index],
                      borderRadius: BorderRadius.all(
                        Radius.circular(0),
                      ),
                    ), //BorderRadi),
                    //alignment: Alignment.center,
                    child: Container(
                      height: 300,
                      //width: 400,
                      //color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                              child:
                              Image.asset("assets/images/sapor_nirvana.png",width: double.infinity,)),
                          Text(
                            letters[index],
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
             SizedBox(height: 40,),
       


          ],
        ),
      ],
    ),

    );
  }
  _getPage(int page) {
    switch (page) {
      case 0:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the home page"),
            ElevatedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              //color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => sap()));
              },
            ),
            ElevatedButton(
              child: Text(
                "Change to page 3",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
              },
            )
          ],
        );
      case 1:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the search page"),
            ElevatedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              //color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => sap()));
              },
            )
          ],
        );
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the basket page"),
            ElevatedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              //color: Theme.of(context).primaryColor,
              onPressed: () {},
            )
          ],
      );
}
}
}