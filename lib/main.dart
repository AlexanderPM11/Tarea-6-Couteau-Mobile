import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';
import 'Pages/NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavBar(),
    );
  }
}

// class Render extends StatelessWidget {
//   const Render({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           const SizedBox(
//             height: 92,
//             child: DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text('Categories', style: TextStyle(color: Colors.white)),
//             ),
//           ),
//           ListTile(
//             title: const Text('Item 1'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     ));
//   }
// }
