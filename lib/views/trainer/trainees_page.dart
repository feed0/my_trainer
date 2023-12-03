import 'package:flutter/material.dart';
import 'package:my_trainer/views/components/trainee_card.dart';

// import '/models/brand.dart';

import '/views/components/app_title.dart';

import '/view_models/trainees_viewmodel.dart';

class TraineesPage extends StatelessWidget {
  final List trainees = TraineesViewModel.trainees;

  TraineesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTitle('Meus alunos'),
      body: GridView.count(
        reverse: true,
        crossAxisCount: 2,
        children: trainees.map((trainee) => TraineeCard(trainee)).toList(),
      ),
    );
  }
}
