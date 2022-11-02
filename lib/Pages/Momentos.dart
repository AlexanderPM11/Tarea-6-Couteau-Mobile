import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: depend_on_referenced_packages

import '../View/DetailsEscena.dart';

class Moments extends StatelessWidget {
  Moments({
    super.key,
  });

  void _onTap(String escena, BuildContext context) {
    if (escena == "escena1") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailsEscena()));
    } else if (escena == "escena2") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailsEscena()));
    } else if (escena == "escena3") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailsEscena()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Momentos"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => _onTap("escena1", context),
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                              "Dominic Toretto salta de un carro a otro"),
                        ),
                      ),
                      GestureDetector(
                          onTap: () => _onTap("escena1", context),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/Moments1.jpg",
                            ),
                          )),

                      // second

                      GestureDetector(
                        onTap: () => _onTap("escena2", context),
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                              "Brian O'Conner y Toretto en una decisiva carrera"),
                        ),
                      ),
                      GestureDetector(
                          onTap: () => _onTap("escena2", context),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/moments2.jpg",
                            ),
                          )),

                      // three
                      GestureDetector(
                        onTap: () => _onTap("escena3", context),
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          child:
                              const Text("Toretto derivandose por una ladera"),
                        ),
                      ),
                      GestureDetector(
                          onTap: () => _onTap("escena3", context),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/moments3.jpg",
                            ),
                          )),
                    ])
              ],
            )));
  }
}
