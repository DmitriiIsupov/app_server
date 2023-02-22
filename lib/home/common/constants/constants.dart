import 'package:flutter/material.dart';
import '../theme/animation/gradient_text.dart';

var textAnimationGradient = GradientText();
var defaultBackgroundColor = const Color.fromARGB(255, 46, 44, 44);
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/logo/logo_48.png',
        fit: BoxFit.contain,
        height: 32,
      ),
      GradientText(),
      // Container(padding: const EdgeInsets.all(8.0), child: Text('Server App'))
    ],
  ),
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);





















// var defaultBackgroundColor = Color.fromARGB(255, 46, 44, 44);
// var appBarColor = Colors.grey[900];
// var myAppBar = AppBar(
//   backgroundColor: appBarColor,
//   title: Text('Test'),
//   centerTitle: false,
// );
// var drawerTextColor = TextStyle(
//   color: Colors.grey[600],
// );
// var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
// var myDrawer = Drawer(
//   backgroundColor: Colors.grey[300],
//   elevation: 0,
//   child: Column(
//     children: [
//       DrawerHeader(
//         child: Icon(
//           Icons.favorite,
//           size: 64,
//         ),
//       ),
//       Padding(
//         padding: tilePadding,
//         child: ListTile(
//           leading: Icon(Icons.home),
//           title: Text(
//             'D A S H B O A R D',
//             style: drawerTextColor,
//           ),
//         ),
//       ),
//       Padding(
//         padding: tilePadding,
//         child: ListTile(
//           leading: Icon(Icons.settings),
//           title: Text(
//             'S E T T I N G S',
//             style: drawerTextColor,
//           ),
//         ),
//       ),
//       Padding(
//         padding: tilePadding,
//         child: ListTile(
//           leading: Icon(Icons.info),
//           title: Text(
//             'A B O U T',
//             style: drawerTextColor,
//           ),
//         ),
//       ),
//       Padding(
//         padding: tilePadding,
//         child: ListTile(
//           leading: Icon(Icons.info),
//           title: Text(
//             'A B O U T',
//             style: drawerTextColor,
//           ),
//         ),
//       ),
//       Padding(
//         padding: tilePadding,
//         child: ListTile(
//           leading: Icon(Icons.logout),
//           title: Text(
//             'L O G O U T',
//             style: drawerTextColor,
//           ),
//         ),
//       ),
//     ],
//   ),
// );