import 'package:flutter/material.dart';
import '/models/brand.dart';
import '/models/trainee.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TraineeCard(
          Trainee('Neymar Junior', 24, 65, 'assets/images/avatar12.png'),
        ),
      ),
    ),
  );
}

class TraineeCard extends StatelessWidget {
  // final String routine;

  // const RoutineTile(this.routine, {super.key});

  final Trainee trainee;

  const TraineeCard(this.trainee, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Flexible(
        // height: 243,
        // width: 182,
        child: Padding(
          padding: const EdgeInsets.all(Brand.padding),
          child: Column(
            children: [
              Image.asset(trainee.picture),
              Text(trainee.name),
              Text('${trainee.age} anos'),
              Text('${trainee.weight} kg'),
            ],
          ),
        ),
      ),
    );
  }
}
