// ignore_for_file: must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizgame_app/ques/question.dart';

class QuitApp extends StatelessWidget {
  QuitApp(this.panswer, this.switchAppquit, {super.key});
  final List<String> panswer;
  void Function() switchAppquit;

  List<Map<String, Object>> get create {
    final List<Map<String, Object>> myAnswer = [];
    for (var i = 0; i < panswer.length; i++) {
      myAnswer.add({
        "question_index": i,
        "question": questionInswers[i].question,
        "answer": panswer[i],
        "TrueInswer": questionInswers[i].answer[0],
      });
    }
    return myAnswer;
  }

  @override
  Widget build(BuildContext context) {
    var num = 0;
    for (var e in create) {
      if (e["answer"] == e["TrueInswer"]) {
        num++;
      }
    }
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.deepPurpleAccent,
          Colors.purpleAccent,
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "you answer $num out of ${panswer.length} questions correct",
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          const SizedBox(
            height: 110.0,
          ),
          ...create.map((e) => Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(17.0),
                    child: CircleAvatar(
                      backgroundColor: e["answer"] == e["TrueInswer"]
                          ? Colors.green
                          : Colors.red,
                      child: Text(
                        ((e['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                            fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20.0,
          ),
          TextButton.icon(
            onPressed: switchAppquit,
            label: const Text("Quiz restart !"),
            icon: const Icon(
              Icons.restart_alt,
              color: Colors.deepOrange,
            ),
          )
        ],
      ),
    );
  }
}
