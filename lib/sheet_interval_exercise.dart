import 'package:flutter/material.dart';
import 'package:music_trainer/sheet_interval_question.dart';

class SheetIntervalExerciseWidget extends StatefulWidget {
  const SheetIntervalExerciseWidget({super.key});
  @override
  State<SheetIntervalExerciseWidget> createState() =>
      _SheetIntervalExerciseWidgetState();
}

class _SheetIntervalExerciseWidgetState
    extends State<SheetIntervalExerciseWidget> {
  static const QUESTIONS = 10;
  int _questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sheet Music Interval Exercise"),
        ),
        body: Column(children: [
          Text("Question ${_questionNumber + 1} of $QUESTIONS"),
          Expanded(child: SheetIntervalQuestionWidget()),
          Expanded(child: Container()),
          Row(children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _questionNumber++;
                      });
                    },
                    child: Text("Next")))
          ])
        ]));
  }
}
