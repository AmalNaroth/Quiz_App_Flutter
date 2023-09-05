import 'package:quiz_app/models/question_models.dart';

const questions = [
  QuizQuestions(
    question: "What programming language is Flutter primarily based on?",
    answers: ["Dart", "JavaScript", "Java", "Kotlin"],
  ),
  QuizQuestions(
    question:
        "Which widget in Flutter is used to create a button with a Material Design style?",
    answers: [
      "RaisedButton",
      "FlatButton",
      "IconButton",
      "FloatingActionButton"
    ],
  ),
  QuizQuestions(
    question: "In Flutter, what is the purpose of the 'pubspec.yaml' file?",
    answers: [
      "It manages external dependencies.",
      "It defines the app's user interface.",
      "It specifies the app's layout.",
      "It controls the app's routing."
    ],
  ),
  QuizQuestions(
    question:
        "Which package management tool is commonly used in Flutter to add external dependencies to your project?",
    answers: ["Gradle", "npm", "CocoaPods", "pub"],
  ),
  QuizQuestions(
    question:
        "What is the purpose of the 'main.dart' file in a Flutter project?",
    answers: [
      "It contains the app's assets and resources.",
      "It defines the app's user interface.",
      "It is the entry point of the app.",
      "It manages the app's database."
    ],
  ),
  QuizQuestions(
    question:
        "Which widget in Flutter is used to create a scrollable list of items?",
    answers: ["ListView", "GridView", "Column", "Row"],
  ),
  QuizQuestions(
    question:
        "In Flutter, what is the purpose of the 'BuildContext' parameter often seen in widget constructors?",
    answers: [
      "It provides information about the widget's location in the widget tree.",
      "It provides access to the app's global state.",
      "It is used to define the app's layout.",
      "It handles user input events."
    ],
  ),
  QuizQuestions(
    question: "Which widget is commonly used to display an image in Flutter?",
    answers: [
      "Image",
      "ImageBox",
      "ImageView",
      "ImageWidget",
    ],
  ),
  QuizQuestions(
    question:
        "What is the primary function of the 'setState' method in Flutter?",
    answers: [
      "To rebuild the widget tree when the internal state of a widget changes.",
      "To set the state of the entire application.",
      "To navigate between different screens.",
      "To update the app's dependencies."
    ],
  ),
];
