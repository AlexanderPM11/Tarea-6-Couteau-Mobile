import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tarea5/Pages/HomePage.dart';
import 'package:tarea5/Pages/Momentos.dart';

import '../View/About.dart';
import '../View/ContactMe.dart';
import '../View/InMyLive.dart';
import 'Personajes.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 92,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child:
                    Text('Categories', style: TextStyle(color: Colors.white)),
              ),
            ),
            ListTile(
              title: const Text('Personajes '),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Personajes()));
              },
            ),
            ListTile(
              title: const Text('Momentos '),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Moments()));
              },
            ),
            ListTile(
              title: const Text('Acerca de '),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => About()));
              },
            ),
            ListTile(
              title: const Text('En mi vida '),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => InMYLive()));
              },
            ),
            ListTile(
              title: const Text('Contactame'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ContactMe()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                child: const Text("Dominic Toretto salta de un carro a otro"),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    "assets/homePage.jpg",
                  )),
            ]),
      ),
    );
  }
}
