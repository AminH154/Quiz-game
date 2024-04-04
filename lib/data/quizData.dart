import 'package:quizgame_app/ques/question.dart';

class QuizData {
  final String question;
  final List<String> answer;

  QuizData(this.question, this.answer);

  List<String> shuuff() {
    var listSuff = List.of(answer);
    listSuff.shuffle();
    return listSuff;
  }
}
