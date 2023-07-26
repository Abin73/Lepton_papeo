// import 'package:flutter/material.dart';
// import 'package:lepton_papeo/view/homepage/homepage.dart';

// class MyBottomNavigationBar extends StatefulWidget {
//   @override
//   _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
// }

// class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
//   int _selectedIndex = 0;

//   // Define your page views here, such as:
//   final List<Widget> _pages = [
//     HomePage(),
//     HomePage(),
//     HomePage(),
//     HomePage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed, // Use fixed type if you have more than 3 items
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore),
//             label: 'Explore',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
