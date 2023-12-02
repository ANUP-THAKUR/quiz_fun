import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      /* child: ElevatedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,*/
      child: ElevatedButton(
        onPressed: () {
          print("answer 2");
        },
        child: const Text('Answer 1'),
      ),
    );
  }
}
