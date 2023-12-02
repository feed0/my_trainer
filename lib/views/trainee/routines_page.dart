import 'package:flutter/material.dart';
import 'package:my_trainer/views/components/app_title.dart';
import 'package:my_trainer/views/components/routine_tile.dart';

import '/models/brand.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: RoutinesPage(),
      ),
    ),
  );
}

class RoutinesPage extends StatelessWidget {
  RoutinesPage({super.key});

  final List routines = [
    'Costas',
    'Peito',
    'Pernas',
    'Bíceps',
    'Tríceps',
    'Ombros',
    'Abdominais',
    'Glúteos',
    'Panturrilhas',
    'Cardio',
    'Alongamento',
    'Mobilidade',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Brand.background,
      appBar: const AppTitle('Treinos'),
      body: ListView.builder(
        // make it upside down scrolling
        reverse: true,
        itemCount: routines.length,
        itemBuilder: (context, index) {
          return RoutineTile(routines[index]);
        },
      ),
    );
  }
}
