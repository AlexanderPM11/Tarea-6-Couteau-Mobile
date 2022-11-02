import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
            "Fast & Furious (también conocida como The Fast and the Furious, Rápido y furioso o Rápidos y furiosos en Hispanoamérica y Fast & Furious: A Todo Gas en España) es una franquicia de medios estadounidense centrada en una serie de películas de acción que se ocupan en gran medida de automóviles. La saga también incluye cortometrajes, una serie de televisión, espectáculos en vivo, videojuegos y atracciones de parques temáticos. Está distribuida por Universal Pictures. Si bien la saga ha tenido una baja muy importante del elenco con la muerte de Paul Walker en 2013, Vin Diesel continuó con las series de películas que le prometió al actor ya fallecido, recalcando que junto con el resto del elenco consideran que aun la saga está muy activa"),
      ),
    );
  }
}
