import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
          ),
          const Gap(60),
          Text(
            "Learn flutter the fun way!",
            style: GoogleFonts.dancingScript(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
          ),
          const Gap(30),
          ElevatedButton.icon(
            onPressed: startQuiz,
            label: const Text("Start Quiz"),
            icon: const Icon(Icons.arrow_right_alt),
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(
                      color: Colors.white,
                    ))),
          ),
        ],
      ),
    );
  }
}
