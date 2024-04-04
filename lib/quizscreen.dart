import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quizgame_app/FirstScreen.dart';
import 'package:quizgame_app/ScoScreen.dart';
import 'package:quizgame_app/ques/question.dart';
import 'package:quizgame_app/quitscreen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({
    super.key,
  });

  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Widget? screen;
  List<String> panswer = [];

  void addAnswers(answer) {
    panswer.add(answer);
    if (panswer.length == questionInswers.length) {
      setState(() {
        screen = QuitApp(panswer, switchAppquit);
        panswer = [];
      });
    }
    log(answer.toString());
  }

  void initState() {
    screen = FirstApp(switchApp);
    super.initState();
  }

  void switchApp() {
    setState(() {
      screen = QuestApp(addAnswers);
    });
  }

  void switchAppquit() {
    setState(() {
      screen = FirstApp(switchApp);
      panswer = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Text(
            "QUIZ APP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ),
        body: screen,
      ),
    );
  }
}
