import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/button_widget.dart';
import 'package:quiz_app/data/question_data.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    currentQuestionIndex++;
      setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final qA1 = questions[currentQuestionIndex];
    return SizedBox(
      //width: double.infinity,
      child: Container(
        // margin: EdgeInsets.all(20),
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${currentQuestionIndex + 1}. ${qA1.question}",
              textAlign: TextAlign.start,
              style: GoogleFonts.lato(fontSize: 20),
            ),
            const Gap(30),
            ...qA1.getShuffledAnswers().map((e) {
              return CustomElivatedButton(e, callTheFunction: () => answerQuestion(e),);
            })
          ],
        ),
      ),
    );
  }
}
