import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'question': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Fady', 'score': 1},
        {'text': 'Fady', 'score': 1},
        {'text': 'Fady', 'score': 1},
        {'text': 'Fady', 'score': 1},
      ],
    },
  ];

  var _totalScore = 0;
  var _questionIndex = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() => _questionIndex++);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  onAnswer: _answerQuestion,
                )
              : Result(
                  totalScore: _totalScore,
                  resetQuiz: _resetQuiz,
                ),
        ),
      ),
    );
  }
}
