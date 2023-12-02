import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({super.key});
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });
  //const Quiz({ required this.questions,
  // required this.amswerQuestion,
  //required this.questionIndex, required void Function() answerQuestion
  // });

  // get answer => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        //...(questions[questionIndex]['answer'])as List<String>).map((answer){
        //return Answer(amswerQuestion,answer);
        // }).toList()
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
