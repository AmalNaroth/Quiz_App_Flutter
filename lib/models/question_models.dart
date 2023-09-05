class QuizQuestions {
  const QuizQuestions({required this.question,required this.answers});
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledAnswer = List.of(answers);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}