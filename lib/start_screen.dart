import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StartScreen extends StatelessWidget {
   StartScreen(this.startQuiz,{super.key,});

   final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,
          Colors.grey,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/quiz-logo.png",
                width: 300,
              ),
              Gap(60),
              Text(
                "Learn flutter the fun way!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Gap(30),
              ElevatedButton.icon(
                onPressed: startQuiz,
                label: Text("Start Quiz"),
                icon: Icon(Icons.arrow_right_alt),
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 15),
                    padding: EdgeInsets.all(15),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        side: BorderSide(
                          color: Colors.white,
                        ))),
              ),
            ],
          ),
        ),
      );
  }
}
