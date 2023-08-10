import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:lepton_sapor/view/sruthi/Pages/menu_card.dart';

class FoodMenu1 extends StatelessWidget {
  const FoodMenu1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: GoogleMonstserratWidgets(text: "Menu", fontsize: 18.w),
          backgroundColor: const Color.fromARGB(255, 91, 114, 163),elevation: 0,
),
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
            StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                                  stream: FirebaseFirestore.instance.collection('Menu').snapshots(),
                                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data;

                        if (data == null || data.docs.isEmpty) {
                          return const Center(
                            child: Text('No data available.'),
                          );
                        }
                          

                        // if (onlineDocs.isEmpty) {
                        //   return const Center(
                        //     child: Text('No online items available.'),
                        //   );
                        // }

              return ListView.builder(
                itemCount:  data.docs.length,
                 itemBuilder: (BuildContext context, int index) {
                                  // Existing card creation code
                                  Map<String, dynamic> documentData = data.docs[index].data();
                                  bool isOnline = documentData['availability'] == 'online';
                                  Color cardColor = isOnline ? Colors.white : Colors.grey.withOpacity(0.5);

                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    child: Padding(
                      padding:  EdgeInsets.all(10.w),
                      child: Card(
                         color: cardColor, 
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        child: ListTile(
                          leading: GestureDetector(
                            onTap: () {
                              _showEnlargedImageDialog(
                                  context, "assets/images/nirvana.jpg");
                            },
                            child: Container(
                              padding: const EdgeInsets.only(top: 10), // Add padding directly to the Image.asset
                              child: Image.asset(
                                "assets/images/nirvana.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Padding(
                            padding:  EdgeInsets.only(top: 10.h),
                            child: GoogleMonstserratWidgets(
                              text:documentData['foodName'],
                              fontsize: 22.w,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Padding(
                            padding:  EdgeInsets.only(top: 10.h),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 250,
                                //  color: cred,
                                  child: GoogleMonstserratWidgets(
                                    text: documentData['about'],
                                    fontsize: MediaQuery.of(context).size.width/35
                                    ,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding:  const EdgeInsets.only(top: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                         
                                           child:   AddCount(
                                                count: repo.getCount(context, index),
                                                increment: () {
                                                  repo.incerementCounter(context, index);
                                                },
                                                decrement: () {
                                                  repo.decrementCounter(context, index);
                                                },
                                              ),
                                            
                                          ),
                                          sw20,
                                          Expanded(
                                            child: Container(
                                              height: 40.h,
                                              width: 110.w,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color.fromARGB(255, 25, 42, 66)
                                              ),
                                              child: Center(
                                                  child: GoogleMonstserratWidgets(
                                                text: "Order",
                                                fontsize: 14.w,
                                                fontWeight: FontWeight.bold,
                                                color: cwhite,
                                              )),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          trailing: GoogleMonstserratWidgets(
                            text: "Rs.${documentData['prize']}",
                            fontsize: 22.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
                } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                }
   } ),
          ],
        ),
      ),
    );
  }
}

void _showEnlargedImageDialog(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
                mainAxisSize: MainAxisSize.min, 
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                      
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  
                  Container(
                    child: Column(
                      children: [
                        GoogleMonstserratWidgets(
                          text: "Fish Nirvana",
                          fontsize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        sh10,
                        GoogleMonstserratWidgets(
                          text: "Price : \$ 2",
                          fontsize: 20,
                          
                        ),
                        sh10,
                      ],
                    ),
                  
                    // decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.amber),
                  )
                ],
              ),
            ),
          ],
        ),
            actions: [
      cancelButton,
     // continueButton,
    ],
  

        
      );
      
    },
  );
}
 Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: const Text("Continue"),
    onPressed:() {},
 );