import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  late User _currentUser;
  late Map<String, dynamic> _userData ={};

  @override
  void initState() {
    super.initState();
    _currentUser = FirebaseAuth.instance.currentUser!;
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    try {
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(_currentUser.uid)
          .get();

      if (userSnapshot.exists) {
        _userData = userSnapshot.data() as Map<String, dynamic>;
        setState(() {}); // Update the UI with retrieved user data
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        title: const Text('User Profile'),
      ),
      body: Center(
        child: _userData.isNotEmpty
            ? Padding(
              padding:  EdgeInsets.only(right: 10.w
              ,left: 10.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 20.h),
                      child:  Center(child: CircleAvatar(radius: 60.h,
                       backgroundImage: NetworkImage(_userData['profilePhoto'] ?? ''),)),
                    ),
                    sh10,
                    Card(child: ListTile(
                      title:  GoogleMonstserratWidgets( text: 'Name', fontsize: 10,),
                      subtitle: GoogleMonstserratWidgets(text:_userData['displayName'] ?? 'No Name', fontsize: 18 ,fontWeight: FontWeight.bold,),
                      // trailing: GestureDetector(child: const Icon(Icons.edit),
                      // onTap: (){
                      //   _showAlertDialog();
                      // },),
                    )),
                    sh20,
                      Card(child: ListTile(
                      title:  GoogleMonstserratWidgets( text: 'Email', fontsize: 10,),
                      subtitle: GoogleMonstserratWidgets(text:_userData['email'] ?? 'No Email', fontsize: 18 ,fontWeight: FontWeight.bold),
                      // trailing: GestureDetector(child: const Icon(Icons.edit),onTap: () {
                      //   _showAlertDialogEmail();
                      // },),
                    )),
                    sh20,
                      Card(child: ListTile(
                      title:  GoogleMonstserratWidgets( text: 'Phone Number', fontsize: 10,),
                      subtitle: GoogleMonstserratWidgets(text:_userData['phoneNumber'] ?? 'No Phone no', fontsize: 18 ,fontWeight: FontWeight.bold),
                      trailing: GestureDetector(child: const Icon(Icons.edit,),onTap: (){
_showAlertDialogPhone();
                      },),
                    )),
                   
                   // Text('Email: ${_userData['email']}'),
                    // Add other user details you want to display
                  ],
                ),
            )
            : const CircularProgressIndicator(),
      ),
    );
  }


 

 Future<void> _showAlertDialogPhone() async {
  String newMobNo = ''; // Store the new name

  await showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Update Phone Number'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(hintText: "Enter Number"),
                onChanged: (value) {
                  newMobNo = value; // Update newName as user types
                },
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Update'),
            onPressed: () async {
              // Update the displayName field in Firestore
              try {
                if (newMobNo.isNotEmpty) {
                  await FirebaseFirestore.instance
                      .collection('users')
                      .doc(_currentUser.uid)
                      .set({'phoneNumber': newMobNo},SetOptions(merge: true));

                  setState(() {
                    _userData['phoneNumber'] = newMobNo;
                  });

                  Navigator.of(context).pop();
                }
              } catch (e) {
                print(e.toString());
              }
            },
          ),
        ],
      );
    },
  );
}
}

//  Future<void> _showAlertDialogEmail() async {
//   String newEmail = ''; // Store the new name

//   await showDialog<void>(
//     context: context,
//     barrierDismissible: false,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: const Text('Update Email'),
//         content: SingleChildScrollView(
//           child: ListBody(
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(hintText: "Enter Email"),
//                 onChanged: (value) {
//                   newEmail = value; // Update newName as user types
//                 },
//               ),
//             ],
//           ),
//         ),
//         actions: <Widget>[
//           TextButton(
//             child: const Text('Cancel'),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           TextButton(
//             child: const Text('Update'),
//             onPressed: () async {
//               // Update the displayName field in Firestore
//               try {
//                 if (newEmail.isNotEmpty) {
//                   await FirebaseFirestore.instance
//                       .collection('users')
//                       .doc(_currentUser.uid)
//                       .update({'email': newEmail});

//                   setState(() {
//                     _userData['email'] = newEmail;
//                   });

//                   Navigator.of(context).pop();
//                 }
//               } catch (e) {
//                 print(e.toString());
//               }
//             },
//           ),
//         ],
//       );
//     },
//   );
// }

//   Future<void> _showAlertDialog() async {
//   String newName = ''; // Store the new name

//   await showDialog<void>(
//     context: context,
//     barrierDismissible: false,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: const Text('Update Name'),
//         content: SingleChildScrollView(
//           child: ListBody(
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(hintText: "Enter Name"),
//                 onChanged: (value) {
//                   newName = value; // Update newName as user types
//                 },
//               ),
//             ],
//           ),
//         ),
//         actions: <Widget>[
//           TextButton(
//             child: const Text('Cancel'),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           TextButton(
//             child: const Text('Update'),
//             onPressed: () async {
//               // Update the displayName field in Firestore
//               try {
//                 if (newName.isNotEmpty) {
//                   await FirebaseFirestore.instance
//                       .collection('users')
//                       .doc(_currentUser.uid)
//                       .update({'displayName': newName});

//                   setState(() {
//                     _userData['displayName'] = newName;
//                   });

//                   Navigator.of(context).pop();
//                 }
//               } catch (e) {
//                 print(e.toString());
//               }
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
