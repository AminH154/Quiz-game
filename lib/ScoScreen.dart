import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizgame_app/button.dart';
import 'package:quizgame_app/ques/question.dart';

class QuestApp extends StatefulWidget {
  QuestApp(this.answer, {super.key});
  void Function(String) answer;

  @override
  State<QuestApp> createState() => _QuestAppState();
}

class _QuestAppState extends State<QuestApp> {
  var currentQuestion;

  var currentIndice = 0;
  void switch1(answer) {
    setState(() {
      widget.answer(answer);
      currentIndice++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questionInswers[currentIndice];
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
            currentQuestion.question,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 30.0,
            ),
          ),
          ...currentQuestion
              .shuuff()
              .map((e) => buttonApp(() => switch1(e), e)),
        ],
      ),
    );
  }
}
