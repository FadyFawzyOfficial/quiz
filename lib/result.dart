import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  const Result({
    super.key,
    required this.totalScore,
    required this.resetQuiz,
  });

  String get resultPhrase {
    if (totalScore <= 8) {
      return 'You are awesome and innocent!';
    } else if (totalScore <= 12) {
      return 'Pretty likeable!';
    } else if (totalScore < 16) {
      return 'You are ... strange?!';
    } else {
      return 'You are so bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetQuiz,
          child: const Text('Restart Quiz'),
        ),
      ],
    );
  }
}
