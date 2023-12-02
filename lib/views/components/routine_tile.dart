import 'package:flutter/material.dart';

import '/models/brand.dart';

main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Brand.background,
      body: RoutineTile('Routine 1'),
    ),
  ));
}

class RoutineTile extends StatelessWidget {
  final String routine;

  const RoutineTile(this.routine, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 96,
      margin: const EdgeInsets.only(bottom: Brand.padding, top: Brand.padding),
      padding: const EdgeInsets.all(Brand.padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13 + Brand.padding),
        color: Brand.containerBG,
      ),
      child: ListTile(
        tileColor: Brand.containerBG,
        leading: const Icon(Icons.fitness_center),
        title: Text(routine),
      ),
    );
  }
}
