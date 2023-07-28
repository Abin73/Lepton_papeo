import 'dart:io';
 
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lepton_sapor/utils/utils.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:lepton_sapor/view/menu%20items%20page/widget/menu_dropdown.dart';
import 'package:lepton_sapor/view/menu%20items%20page/widget/menu_textformwidget.dart';

class CreateMenu extends StatefulWidget {
  const CreateMenu({Key? key}) : super(key: key);

  @override
  State<CreateMenu> createState() => _CreateMenuState();
}

class _CreateMenuState extends State<CreateMenu> {
  File? image;
 
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


    Future pickImagecamera() async{

    try{  
   final image = await ImagePicker().pickImage(source: ImageSource.camera);
   if(image == null) return ;
   final imageTemporary = File(image.path );
   setState(()=> this.image = imageTemporary);
  }  on PlatformException catch (e) {
    print("Failed to pick image : $e");
  }
}


Future uploadFile()async{
  final path = 'files/';
  final file =File(image!.path);

  final ref = FirebaseStorage.instance.ref().child(path);
  ref .putFile(file);


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
              child: Column(children: [
               Container(
           height: 150,
        width: 300,
          child: image != null ? Image.file(image!,fit: BoxFit.contain,)
          :
         // FlutterLogo(),
          Image.asset("assets/images/items.png")
         
        ),
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
                      icon: Icon(Icons.timer_sharp),
                    ),
                    SizedBox(height: 20),
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
                      icon: Icon(Icons.timer_sharp),
                    ),
                    SizedBox(height: 20),
                    Text(
                      selectedTime1,
                      style: TextStyle(
                          fontSize: 18.w, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MenuTextFormFieldWidget(
                  hintText: 'Prize',
                ),

                 const SizedBox(height: 10),
                MenuTextFormFieldWidget(
                  hintText: 'About',
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary, // Background color
                    ),
                    onPressed: () {},
                    child: GoogleMonstserratWidgets(
                        text: "Create Menu", fontsize: 18.w)),
              ]),
            )),
      ),
    );
  }
}

