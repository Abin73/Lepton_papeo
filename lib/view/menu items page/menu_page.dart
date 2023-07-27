import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:   const Color.fromARGB(205, 35, 57, 79),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                width: double.infinity,
                height: 300.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
                child: Image.asset(
                  "assets/images/sapor.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(gradient: lGradient),
                  height: 700,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                            child: Column(
                          children: [
                            Container(
                                child: const Center(
                                    child: CircleAvatar(
                              maxRadius: 60,
                              backgroundImage:
                                  AssetImage("assets/images/logo.jpg"),
                            ))),
                            GoogleMonstserratWidgets(
                              text: "Sapor",
                              fontsize: 24,
                              color: cwhite,
                              fontWeight: FontWeight.w600,
                              //    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const Center(child: Text("Lunch",style: TextStyle(color: cwhite,),)),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const Center(child: Text("Break Fast",style: TextStyle(color: cwhite,),)),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const Center(child: Text("Dinner",style: TextStyle(color: cwhite,),)),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/food.jpg"),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "Biriyani",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: cwhite),
                              ),

                              // Text("Mandhi", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                //  Navigator.push(context,MaterialPageRoute(builder: (context){
                                //   return  const MenuDisplay();
                                //  }));
                              },
                              icon: const Icon(
                                Icons.arrow_circle_right,
                                color: cwhite,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/food.jpg"),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              // Text("Biriyani", style:
                              //  TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                              Text(
                                "Mandhi",
                                style: TextStyle(
                                    color: cwhite,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                //  Navigator.push(context,MaterialPageRoute(builder: (context){
                                //   return  const MenuDisplay();
                                //  }));
                              },
                              icon: const Icon(
                                Icons.arrow_circle_right,
                                color: cwhite,
                              )),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
