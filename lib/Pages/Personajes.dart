import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../View/DetailsPerson.dart';

class Personajes extends StatelessWidget {
  const Personajes({super.key});

  void _onTap(String name, BuildContext context) {
    if (name == "Toretto") {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsPerson(
                nameperson: "Toretto",
                Details:
                    "Dominic Toretto es un personaje de ficción protagonista de la saga cinematográfica The Fast and the Furious. Interpretado por Vin Diesel, el personaje fue creado por el guionista Gary Scott Thompson.",
                pathImage: "assets/homePage.jpg",
              )));
    } else if (name == "Brian") {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsPerson(
                nameperson: "Brian O'Conner",
                Details:
                    "Brian O'Conner fue un personaje ficticio interpretado por el fallecido actor Paul Walker en la franquicia fílmica The Fast and the Furious. Apareció por primera vez en una película, junto a su compañero protagonista Dominic Toretto, en The Fast and the Furious. ",
                pathImage: "assets/O'Conner.jpg",
              )));
    } else if (name == "Luke") {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsPerson(
                nameperson: "Luke Hobes",
                Details:
                    "Es un agente especial del Servicio de Seguridad Diplomática de los Estados Unidos y su primera aparición fue en la película Fast Five, dónde recibió una vez la tarea de perseguir y capturar a los criminales buscados Dominic Toretto y Brian O'Conner después de que fueron incriminados por la muerte de cuatro agentes de la DEA en Río de Janeiro, Brasil. Más tarde solicita la ayuda del grupo de Dom para detener a Owen Shaw y ayudó a detener al hermano de Owen, Deckard Shaw, tras la muerte de Han Seoul-Oh.",
                pathImage: "assets/TheRock.jpg",
              )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Personajes"),
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
                        onTap: () => _onTap("Toretto", context),
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text("Dominic Toretto"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _onTap("Toretto", context),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/homePage.jpg",
                          ),
                        ),
                      ),

                      // second

                      GestureDetector(
                        onTap: () => _onTap("Brian", context),
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text("Brian O'Conner"),
                        ),
                      ),
                      GestureDetector(
                          onTap: () => _onTap("Brian", context),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/O'Conner.jpg",
                            ),
                          )),

                      // three
                      GestureDetector(
                        onTap: () => _onTap("Luke", context),
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text("Luke Hobes (The rock)"),
                        ),
                      ),
                      GestureDetector(
                          onTap: () => _onTap("Luke", context),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/TheRock.jpg",
                            ),
                          )),
                    ])
              ],
            )));
  }
}
