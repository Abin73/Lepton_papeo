import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/menu%20items%20page/menu_info.dart';



class MenuListItems extends StatefulWidget {
  @override
  _MenuListItemsState createState() => _MenuListItemsState();
}

class _MenuListItemsState extends State<MenuListItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
       backgroundColor:Color.fromARGB(255, 91, 114,163),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Hero(
              tag: "cakeitem",
              child: FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InfoPage()),
                    );
                  },
                  child: Padding(
                    padding:  EdgeInsets.all(10.w),
                    child: Card(
                      
                      // color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(gradient: llGradient,
                         borderRadius: BorderRadius.circular(15.0),),
                        child: Row(
                          children: <Widget>[
                            itemcake(),
                            Container(
                              decoration: BoxDecoration(gradient: llGradient),
                              width: 90,
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: const Image(
                                  fit: BoxFit.fill,
                                  alignment: Alignment.topRight,
                                  image: AssetImage('assets/images/food.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Container(
                     decoration: BoxDecoration(gradient: llGradient,
                         borderRadius: BorderRadius.circular(15.0),),
                    child: Row(
                      children: [
                        juiceitem(),
                        Container(
                          width: 90,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: const Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.topRight,
                              image: AssetImage('assets/images/juice.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  // color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Container(
                     decoration: BoxDecoration(gradient: llGradient,
                         borderRadius: BorderRadius.circular(15.0),),
                    child: Row(
                      children: <Widget>[
                        pizzaitem(),
                        Container(
                          width: 90,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: const Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.topRight,
                              image: AssetImage('assets/images/pizza.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  // color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Container(
                     decoration: BoxDecoration(gradient: llGradient,
                         borderRadius: BorderRadius.circular(15.0),),
                    child: Row(
                      children: <Widget>[
                        eliteitem(),
                        Container(
                          width: 90,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: const Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.topRight,
                              image: AssetImage('assets/images/elite.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemcake() {
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Italian Choco Cake",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Dark belgium chocolate",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 9.5,
                color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.shopping_cart,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Cold",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Fresh",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 7,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget juiceitem() {
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Fresh Mango Juice",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Dark belgium chocolate",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 9.5,
                color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.shopping_cart,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Cold",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Fresh",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "New",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 7,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget pizzaitem() {
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Cheese Pizza Italy ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Double cheese New York Style",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 9.5,
                color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.shopping_cart,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Spicy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "New",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 7,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget eliteitem() {
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Alinea Chicago",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Classical French cooking",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 9.5,
                color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.shopping_cart,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Spicy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.red,
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Hot",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9.5,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "New",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 9.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 7,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}