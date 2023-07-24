
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lepton_papeo/view/colors/colors.dart';
import 'package:lepton_papeo/view/constant/constant.dart';
import 'package:lepton_papeo/view/fonts/googleMonstre.dart';




class MenuCard extends StatelessWidget {

  const MenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const   Color(0XFFFFDB94),
      appBar: AppBar(
        title: Row(
          children: [
            sh20,
            GoogleMonstserratWidgets(text: "HomeWork", fontsize: 20.h)
          ],
        ),
        backgroundColor: cwhite,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: ((context, index) {
                    return sh10;
                  }),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.h, right: 10.h, top: 10.h),
                          child: Card(
                            child: ListTile(
                                shape: const BeveledRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.grey, width: 0.2)),
                                leading: Image.asset("assets/images/curry.png"),
                                title: GoogleMonstserratWidgets(
                                  text: "Oxtail Lasagne",
                                  fontsize: 19.h,
                                  fontWeight: FontWeight.bold,
                                ),
                                subtitle: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: GoogleMonstserratWidgets(
                                          text: "The tail of the cow",
                                          fontsize: 15.h,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Padding(
                                    //   padding: EdgeInsets.only(top: 10.h),
                                    //   child: Row(
                                    //     children: [
                                    //       GoogleMonstserratWidgets(
                                    //           text: "",
                                    //           fontsize: 15.h,
                                    //           fontWeight:
                                    //               FontWeight.bold),
                                    //       InkWell(
                                    //         onTap: () {
                                    //           // Navigator.push(
                                    //           //     context,
                                    //           //     MaterialPageRoute(
                                    //           //         builder: (context) =>
                                    //           //             const HomeWorkDisplay()));
                                    //         },
                                    //         child: GoogleMonstserratWidgets(
                                    //           text: "View",
                                    //           fontsize: 16.h,
                                    //           color: cwhite,
                                    //           fontWeight: FontWeight.w500,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                        children: [
                                          GoogleMonstserratWidgets(
                                              text: "Remaining three",
                                              fontsize: 15.h,
                                              fontWeight:
                                                  FontWeight.bold,color: cred,),
                                          GoogleMonstserratWidgets(
                                              text: "20",
                                              fontsize: 15.h,
                                              fontWeight:
                                                  FontWeight.bold),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children:  [AddCount(
                                          count: repo.getCount(context, index),
                                          increment: (){
                                            repo.incerementCounter(context, index);
                                          },
                                          decrement: (){
                                            repo.decrementCounter(context, index);
                                          },
                                        )

                                      //  GoogleMonstserratWidgets(
                                      //         text: "Assigned Teacher:",
                                      //         fontsize: 15.h),
                                          // Flexible(
                                          //   child: GoogleMonstserratWidgets(
                                          //       text: " Anupama Neena ",
                                          //       fontWeight:
                                          //           FontWeight.bold,
                                          //       fontsize: 15.h),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
class AddCount extends StatefulWidget {
  final int count;
  final VoidCallback increment;
  final VoidCallback decrement;

  const AddCount({required this.count,required this.increment,required this.decrement,

    super.key});

  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BuildContainer(false, Icons.remove, widget.decrement, widget.count > 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(widget.count.toString()),
          ),
          BuildContainer(false, Icons.add, widget.increment),
        ],
      ),
    );
  }

  InkWell BuildContainer(bool left, IconData icon, VoidCallback onTap, [bool active = true]) {
    return InkWell(
      onTap: active ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(5),
          color: active ? Colors.white : Colors.white,
        ),
        child: Icon(icon),
      ),
    );
  }
}


CounterRepo repo =CounterRepo();

class CounterRepo{

int getCount(context,index){
return SharedAppData.getValue(context,"count-$index",()=>0);

}
incerementCounter(context,index){
  var count=getCount(context,index);
  SharedAppData.setValue(context,"count-$index", count+1);
}
decrementCounter(context,index){
  var count=getCount(context,index);
  SharedAppData.setValue(context,"count-$index", count-1);
}
}
