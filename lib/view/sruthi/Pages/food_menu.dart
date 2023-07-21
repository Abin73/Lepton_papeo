import 'package:flutter/material.dart';
import 'package:lepton_papeo/fonts/googleMonstre.dart';
import 'package:lepton_papeo/view/colors/colors.dart';
import 'package:lepton_papeo/view/constant/constant.dart';
import 'package:lepton_papeo/view/sruthi/Pages/menu_card.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: const Color.fromARGB(255, 91, 114, 163),
                    child: Column(
                      children: const [
                        // Add your content here if needed
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: const Color(0XFFF5F5F5),
                    child: Column(
                      children: const [
                        // Add your content here if needed
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      leading: GestureDetector(
                        onTap: () {
                          _showEnlargedImageDialog(
                              context, "assets/images/nirvana.jpg");
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              top:
                                  10), // Add padding directly to the Image.asset
                          child: Image.asset(
                            "assets/images/nirvana.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: GoogleMonstserratWidgets(
                          text: "Meals",
                          fontsize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            GoogleMonstserratWidgets(
                              text: "What Eating Three Meals A Day Can Do",
                              fontsize: 15,
                              //fontWeight: FontWeight.bold,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  AddCount(
                                    count: repo.getCount(context, index),
                                    increment: () {
                                      repo.incerementCounter(context, index);
                                    },
                                    decrement: () {
                                      repo.decrementCounter(context, index);
                                    },
                                  ),
                                  sw50,
                                  Container(
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(255, 25, 42, 66)
                                    ),
                                    child: Center(
                                        child: GoogleMonstserratWidgets(
                                      text: "Add to cart",
                                      fontsize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cwhite,
                                    )),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      trailing: GoogleMonstserratWidgets(
                        text: " \$ 2",
                        fontsize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

void _showEnlargedImageDialog(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              sh30,
              Container(
                child: Column(
                  children: [
                    GoogleMonstserratWidgets(
                      text: "Fish Nirvana",
                      fontsize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    sh10,
                    GoogleMonstserratWidgets(
                      text: "Price : \$ 2",
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    sh10,
                  ],
                ),

                // decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.amber),
              )
            ],
          ),
        ),
      );
    },
  );
}
