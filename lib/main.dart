import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers = [];

  var activeScreen = "Start-screen";

  void changeScreen() {
    setState(() {
      activeScreen = "Question-screen";
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      activeScreen = "Result-screen"; 
    }
    setState(() {});
    print(selectedAnswers.join(" "));
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(changeScreen);
    if (activeScreen == "Question-screen") {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswers,
      );
    }
     if(activeScreen=="Result-screen"){
      screenWidget=ResultScreen(choosenAnswers: selectedAnswers,);
      //selectedAnswers.clear();
  }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz_app",
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white))),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.grey,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: screenWidget),
      ),
    );
  }
}
