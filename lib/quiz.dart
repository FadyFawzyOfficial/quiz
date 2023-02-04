import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) onAnswer;

  const Quiz({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.onAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Question(questions[questionIndex]['question'] as String),
        const SizedBox(height: 16),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                answerText: answer['text'] as String,
                onPressed: () => onAnswer(answer['score'] as int),
              ),
            )
            .toList()
      ],
    );
  }
}
