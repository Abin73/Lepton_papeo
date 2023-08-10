import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lepton_sapor/model/create_menu_model.dart';
import 'package:lepton_sapor/utils/utils.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:lepton_sapor/view/menu%20items%20page/widget/menu_dropdown.dart';
import 'package:lepton_sapor/view/menu%20items%20page/widget/menu_textformwidget.dart';

class CreateMenu extends StatefulWidget {
  CreateMenu({Key? key}) : super(key: key);
  final foodprizecontroller = TextEditingController();
  final aboutfoodcontroller = TextEditingController();
  final foodnamecontroller = TextEditingController();

  @override
  State<CreateMenu> createState() => _CreateMenuState();
}

class _CreateMenuState extends State<CreateMenu> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  File? image;
  int _randomNumber = 0;
  void _generateRandomNumber() {
    setState(() {
      _randomNumber =
          Random().nextInt(10000); // Generate random number from 0 to 99
    });
  }

//     Future pickImagefile() async{
//     try{
//    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//    if(image == null) return ;
//    final imageTemporary = File(image.path );
//    setState(()=> this.image = imageTemporary);
//   }  on PlatformException catch (e) {
//     print("Failed to pick image : $e");
//   }
// }

  Future pickImagecamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick image : $e");
    }
  }

  Future uploadFile() async {
    const path = 'files/';
    final file = File(image!.path);

    final ref = FirebaseStorage.instance.ref().child(path);
    ref.putFile(file);
  }

  String selectedTime = "";
  Future<void> _selectTime(BuildContext context) async {
    String time = await timePicker(context);
    setState(() {
      selectedTime = time;
    });
  }

  String selectedTime1 = "";
  Future<void> _selectTime1(BuildContext context) async {
    String time = await timePicker(context);
    setState(() {
      selectedTime1 = time;
    });
  }

  List<List<String>> dropdownItems = [
    ['Cuisine1', 'Cuisine2', 'Cuisine3'],
    ['Break Fast', 'Lunch', 'Dinner'],
    [
      'Veg',
      'Non-Veg',
    ],
    //
    [
      'Online',
      'Offline',
    ],
  ];
  List<String> selectedValues = [
    'Cuisine1',
    'Break Fast',
    'Veg',
    'Online',
    
  ];
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: GoogleMonstserratWidgets(
            text: "Create Menu",
            fontsize: 22,
          ),
          backgroundColor: primary,
        ),
        backgroundColor: const Color.fromARGB(255, 246, 248, 247),
        body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(children: [
                  SizedBox(
                      height: 150,
                      width: 300,
                      child: image != null
                          ? Image.file(
                              image!,
                              fit: BoxFit.contain,
                            )
                          :
                          // FlutterLogo(),
                          Image.asset("assets/images/items.png")),
                  sh10,
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary, // Background color
                      ),
                      onPressed: () {
                        pickImagecamera();
                      },
                      child: GoogleMonstserratWidgets(
                          text: "Open camara", fontsize: 15.w)),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary, // Background color
                      ),
                      onPressed: () {
                        uploadFile();
                      },
                      child: GoogleMonstserratWidgets(
                          text: "Upload to server", fontsize: 15.w)),
                  sh10,

                  //   ],
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  for (int i = 0; i < dropdownItems.length; i++)
                    DropdownContainer(
                      validator: checkFieldEmpty,
                      items: dropdownItems[i],
                      selectedValue: selectedValues[i],
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValues[i] = newValue ?? '';
                        });
                        // saveToFirebase();
                      },
                    ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoogleMonstserratWidgets(
                          text: "Starting Time", fontsize: 15.w),
                      IconButton(
                        onPressed: () => _selectTime(context),
                        icon: const Icon(Icons.timer_sharp),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        selectedTime,
                        style: TextStyle(
                            fontSize: 18.w, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoogleMonstserratWidgets(
                          text: "Ending Time", fontsize: 15.w),
                      IconButton(
                        onPressed: () => _selectTime1(context),
                        icon: const Icon(Icons.timer_sharp),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        selectedTime1,
                        style: TextStyle(
                            fontSize: 18.w, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  MenuTextFormFieldWidget(
                    controller: widget.foodnamecontroller,
                    hintText: 'Food name',
                    validator: checkFieldEmpty,
                  ),
                  const SizedBox(height: 10),
                  MenuTextFormFieldWidget(
                    controller: widget.foodprizecontroller,
                    hintText: 'Prize',
                    validator: checkFieldEmpty,
                  ),

                  const SizedBox(height: 10),
                  MenuTextFormFieldWidget(
                    controller: widget.aboutfoodcontroller,
                    hintText: 'About',
                    validator: checkFieldEmpty,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary, // Background color
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final CreateFoodMenu foodDetails = CreateFoodMenu(
                            foodId:
                                '${widget.foodnamecontroller.text.trim()}$_randomNumber',
                            docid: "",
                            foodName: widget.foodnamecontroller.text.trim(),
                            cusine: selectedValues[0],
                            timeBasedFood: selectedValues[1],
                            vegNonVeg: selectedValues[2],
                            availability: selectedValues[3],
                            startingTime: selectedTime,
                            endingtime: selectedTime1,
                            prize: widget.foodprizecontroller.text.trim(),
                            about: widget.aboutfoodcontroller.text.trim(),
                          );
                          addingFoodmenu(foodDetails);
                          _generateRandomNumber();
                        }
                        clearFeild();
                      },
                      child: GoogleMonstserratWidgets(
                          text: "Create Menu", fontsize: 18.w)),
                ]),
              ),
            )),
      ),
    );
  }

  void clearFeild() {
   // selectedValues.clear();
    widget.foodnamecontroller.clear();
    widget.aboutfoodcontroller.clear();
    widget.foodprizecontroller.clear();
  }
}

addingFoodmenu(CreateFoodMenu menuDetails) {
  final id = uuid.v1();
  const String foodMenuId = 'Create_Menu';
  const String addMenuId = 'Add_Menu';

  FirebaseFirestore.instance
      .collection('Menu')
      .doc(id)
      // .collection('CreateMenu')
      // .doc(id)
      .set(menuDetails.copyWith(docid: id).toMap());
}
