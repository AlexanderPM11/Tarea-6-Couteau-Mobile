import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsPerson extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String nameperson = "";
  // ignore: non_constant_identifier_names
  String Details = "";
  String pathImage = "";
  DetailsPerson(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.nameperson,
      // ignore: non_constant_identifier_names
      required this.Details,
      required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Details Person"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        child: Text(nameperson),
                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        child: Text(Details),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          pathImage,
                        ),
                      )
                    ])
              ],
            )));
  }
}
