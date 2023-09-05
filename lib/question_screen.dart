import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_app/button_widget.dart';
import 'package:quiz_app/data/question_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      currentQuestionIndex++;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final qA1 = questions[currentQuestionIndex];
    return SizedBox(
      //width: double.infinity,
      child: Container(
        // margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${currentQuestionIndex + 1} ${qA1.question}",
                textAlign: TextAlign.start),
            const Gap(30),
            ...qA1.getShuffledAnswers().map((e) {
              return CustomElivatedButton(e, callTheFunction: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
