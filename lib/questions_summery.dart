import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  QuestionSummery({super.key, required this.summeryData});
  List<Map<String, Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          children: summeryData
              .map(
                (e) => Row(
                  children: [
                    Text(
                      (e["question_index"] as int).toString(),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            e['question'].toString(),
                          ),
                          Text(
                            e['correct_answer'].toString(),
                          ),
                          Text(
                            e["user_answer"].toString(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ).toList(),
        ),
      ),
    );
  }
}
