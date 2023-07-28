// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:lepton_sapor/view/colors/colors.dart';
// import 'package:lepton_sapor/view/constant/constant.dart';

// class ImagePickerName extends StatefulWidget {
//   const ImagePickerName({super.key});

//   @override
//   State<ImagePickerName> createState() => _ImagePickerNameState();
// }

// class _ImagePickerNameState extends State<ImagePickerName> {
//   File? image;

//   Future pickImagefile() async{
//   try{  
//    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//    if(image == null) return ;
//    final imageTemporary = File(image.path );
//    setState(()=> this.image = imageTemporary);
//   }  on PlatformException catch (e) {
//     print("Failed to pick image : $e");
//   }

//     }


//    Future pickImagecam() async{
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.camera);
//       if (image ==null) return;
//       final imageTemporary =File(image.path);
//       setState(() => this.image = imageTemporary );

//     }   on PlatformException catch (e) {
//     print("Failed to pick image : $e");
//   }
    
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
    
//           Container(
//              height: 160,
//           width: 250,
//             child: image != null ? Image.file(image!,fit: BoxFit.contain,):
//             FlutterLogo(size: 150,),
           
//           ),
//         Container(
//           height: 100,
//           width: 310,
//           color: cred,
//           child: Center(
//             child: imagePickerButtonWidget(
//               title: 'Pick from files',
//               icon: Icons.image_outlined,
//               onPressed: () => pickImagefile(),
//             ),
//           ),
//         ),
    
//         sh20,
//          Container(
//             height: 100,
//           width: 310,
//           color: cred,
//            child: Center(
//              child: imagePickerButtonWidget(
//               title: 'Pick from camara',
//               icon: Icons.camera_alt_outlined,
//               onPressed: () => pickImagecam(),
//                  ),
//            ),
//          )
//       ]),
//     ),

//     );
//   }
// }

// class imagePickerButtonWidget extends StatelessWidget {
//    imagePickerButtonWidget({

//     required this.title,
//     required this.onPressed,
//      required this.icon,
//     super.key, 
//   });
//   final String title;
//   final IconData icon;
//   final VoidCallback onPressed;


//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         minimumSize: Size.fromHeight(56),
//         primary: Colors.white,
//         onPrimary: Colors.black,
//         textStyle: TextStyle(fontSize: 18)
//       ),
//       onPressed: onPressed,
//       child: Row(
//         children: [
//           Icon(icon),
//           sw10,
//           Text(title),
//         ],
//       ),

//     );
//   }
// }