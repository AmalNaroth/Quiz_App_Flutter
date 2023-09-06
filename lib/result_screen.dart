import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/questions_summery.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.choosenAnswers});

  List<String> choosenAnswers;

  List<Map<String, Object>> get summeryData {
    final List<Map<String, Object>> summery = [];
    for (int i = 0; i < choosenAnswers.length; i++) {
      summery.add({
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answers[0],
        "user_answer": choosenAnswers[i]
      });
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final numOfTotalQuestions = questions.length;
    final numOfCorrectAnswer = summeryData.where((element) => element["user_answer"]==element["correct_answer"]).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your answered $numOfCorrectAnswer out of $numOfTotalQuestions questions correctly!"),
            QuestionSummery(summeryData: summeryData),
            TextButton(onPressed: () {}, child: Text("Restart Quiz!"))
          ],
        ),
      ),
    );
  }
}
