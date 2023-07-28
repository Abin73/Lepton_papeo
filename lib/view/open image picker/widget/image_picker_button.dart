// import 'package:flutter/material.dart';
// import 'package:lepton_sapor/view/constant/constant.dart';

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
//         //primary: Colors.white,
//        // onPrimary: Colors.black,
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