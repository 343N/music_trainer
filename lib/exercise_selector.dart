import 'package:flutter/material.dart';
import 'package:music_trainer/sheet_interval_exercise.dart';

class ExerciseSelectorWidget extends StatelessWidget {
  const ExerciseSelectorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        title: Text('1. Sheet Interval Question'),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SheetIntervalExerciseWidget()));
        },
      ),
    ]);
  }
}
