import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InMYLive extends StatelessWidget {
  const InMYLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
            "Esta serie es muy especial para mi, porque basicamente me criee viendo esta saga. Además me trae a la mete recuerdo emotivos y notalgicos"),
      ),
    );
  }
}
