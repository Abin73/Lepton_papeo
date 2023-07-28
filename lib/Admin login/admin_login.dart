import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/Admin/admin_homepage.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:lepton_sapor/view/sruthi/Pages/food_menu.dart';

class AdminLoginPage extends StatefulWidget {
  String semail = '';
  String spassword = '';
  AdminLoginPage({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  void initState() {
    storeData();
    super.initState();
  }
    Future storeData() async {
    var value =
        await FirebaseFirestore.instance.collection('admin').doc('login').get();
    widget.semail = value['email'];
    widget.spassword = value['password'];
    // log(w)

  
  }

  @override
  Widget build(BuildContext context) {
    // log('valuess>>>>>>>>>>${ await storeData()!['email']}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 114, 163),elevation: 0,
      ),
      //resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 91, 114, 163),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(

          children: [
         Container(
                height: 370.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.w))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      height: 130,
                      width: 150,
                      child: Image.asset('assets/images/sapor_bg.png',fit:BoxFit.fill ),),
                      GoogleMonstserratWidgets(text: "Hai Admin ", fontsize: 25.w,color: cwhite),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GoogleMonstserratWidgets(text: "Welcome to  ", fontsize: 18.w,color: cwhite),
                          GoogleMonstserratWidgets(text: " SAPOR ....", fontsize: 28.w,color: primary,fontWeight: FontWeight.w700),
                        ],
                      ),

                  ]),
               ),
            sh50,
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Enter Your Id",labelStyle: TextStyle(color: cwhite),),
                  style: TextStyle(color: cwhite),
            ),
            sh30,
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Password",labelStyle: TextStyle(color: cwhite),
                  ),
                  style: TextStyle(color: cwhite),
            ),
            Padding(
              padding: const EdgeInsets.only(left:40,right: 40,top: 30),
              child: ElevatedButton(
                onPressed: () async {
                  if (widget.semail == email.text &&
                      widget.spassword == password.text) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AdminHomePage()),
                    );
                  } else {
                    log("error");
                  }
                
                },
                child: const Text("Submit"),
              ),
            ),
          ],
           ),
      ),
);
}
}