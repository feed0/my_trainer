import 'package:flutter/material.dart';

import '/models/brand.dart';
import '/models/exercise.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Brand.background,
      body: ExerciseTile(
        Exercise(
          'Supino',
          3,
          10,
        ),
      ),
    ),
  ));
}

class ExerciseTile extends StatefulWidget {
  final Exercise exercise;

  const ExerciseTile(this.exercise, {super.key});

  @override
  ExerciseTileState createState() => ExerciseTileState();
}

class ExerciseTileState extends State<ExerciseTile>
    with AutomaticKeepAliveClientMixin {
  bool? checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
        margin:
            const EdgeInsets.only(bottom: Brand.padding, top: Brand.padding),
        padding: const EdgeInsets.all(Brand.padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13 + Brand.padding),
          color: Brand.containerBG,
        ),
        child: CheckboxListTile(
          tileColor: Brand.containerBG,
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(widget.exercise.name),
          subtitle:
              Text('${widget.exercise.sets} x ${widget.exercise.repetitions}'),
          value: checkboxValue,
          onChanged: (newValue) {
            setState(() {
              checkboxValue = newValue;
            });
          },
        )
        // child: ListTile(
        //   tileColor: Brand.containerBG,
        //   leading: const Icon(Icons.fitness_center),
        //   title: Text(widget.exercise.name),
        //   subtitle:
        //       Text('${widget.exercise.sets} x ${widget.exercise.repetitions}'),
        //   trailing: Checkbox(
        //     value: checkboxValue,
        //     onChanged: (newValue) {
        //       setState(() {
        //         checkboxValue = newValue;
        //       });
        //     },
        //   ),
        // ),
        );
  }

  @override
  bool get wantKeepAlive => true;
}
