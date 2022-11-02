import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
            "Seria un placer para mi, seguir compartiendo con usted, me puede contactar atráves del siguiente correo: alexanderrpolanco11@gmail.com y tambien en mi sitio web: alexanderpolanco.com"),
      ),
    );
  }
}
