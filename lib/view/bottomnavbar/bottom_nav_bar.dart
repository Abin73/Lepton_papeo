
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';


class DemoCollection extends StatefulWidget {
   DemoCollection({super.key});

  @override
  State<DemoCollection> createState() => _DemoCollectionState();
}

class _DemoCollectionState extends State<DemoCollection> {
  String dataString = 'Get data here';

  Future<void> createCollection()async{
   await FirebaseFirestore.instance.collection("Users").doc('Abinraj').set({
      'username': 'rajappan', 
      'Email' : 'a@gmail.com'
    });
  }

  void createPostCollection(){
    FirebaseFirestore.instance.collection('Users').doc('Abinraj').collection('Posts').doc('Post1').set({
      'username':'reshma',
      'created_date':'10/02/2023',
      'created_by':'reshma',
    });
  }

Future<void> getCollectionData()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection('Users').doc('Abinraj').get();

    var k =snap.get('username');
    log(k.toString());
    setState(() {
      dataString = k;
    });
    
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: GestureDetector(
              onTap: () async{
                await createCollection();
              },
              child: Container(
                width: 200,
                height: 200,
                color: cblack,
              ),
            ),
          ),

          Center(
            child: GestureDetector(
              onTap: () async{
                 createPostCollection();
              },
              child: Container(
                width: 200,
                height: 200,
                color: cblack,
              ),
            ),
          ),

          Center(
            child: GestureDetector(
              onTap: () async{
                 getCollectionData();
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Center(child: GoogleMonstserratWidgets(text: dataString, fontsize: 20,color: cwhite,)),
              ),
            ),
          )
        ],
      ),
    );
  }
}












// import 'package:botton_nav_bar/botton_nav_bar.dart';
// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: BottomNavBar(
//           notchedRadius: 30,
//           centerNotched: false,
//           fabIcon: Icon(Icons.qr_code),
//           bottomItems: <BottomBarItem>[
//             BottomBarItem(
//               bottomItemSelectedColor: Colors.green,
//               label: 'Screen 1',
//               screen: const Text('A'),
//               selectedIcon: Icons.collections_bookmark_outlined,
//             ),
//             BottomBarItem(
//               bottomItemSelectedColor: Colors.green,
//               label: 'Screen 2',
//               screen: const Text('B'),
//               selectedIcon: Icons.search_rounded,
//             ),
//             BottomBarItem(
//               bottomItemSelectedColor: Colors.green,
//               label: 'Screen 3',
//               selectedIcon: Icons.menu_open_rounded,
//               screen: const Text('C'),
//             ),
//             BottomBarItem(
//               bottomItemSelectedColor: Colors.green,
//               label: 'Screen 4',
//               screen: const Text('D'),
//               selectedIcon: Icons.notifications_active,
//             )
//           ],
//         ),
//       );
// }