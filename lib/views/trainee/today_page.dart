import 'package:flutter/material.dart';

import '/models/brand.dart';

import '/view_models/exercises_viewmodel.dart';

import '/views/components/app_title.dart';
import '/views/components/exercise_tile.dart';

main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(backgroundColor: Brand.background, body: TodayPage()),
  ));
}

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage>
// with AutomaticKeepAliveClientMixin
{
  // @override
  // bool get wantKeepAlive => true;

  final List exercises = ExercisesViewModel.exercises;

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    return Scaffold(
      backgroundColor: Brand.background,
      appBar: const AppTitle('Hoje'),
      body: ListView.builder(
        addAutomaticKeepAlives: true,
        reverse: true,
        padding: const EdgeInsets.all(Brand.padding),
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          final exercise = exercises[index];
          return KeepAlive(
            keepAlive: true,
            child: ExerciseTile(exercise),
          );
        },
      ),
    );
  }
}
