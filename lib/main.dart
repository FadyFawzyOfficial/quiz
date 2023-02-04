import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'question': 'who\'s your favorite instructor?',
      'answers': ['Angela', 'Maximilian', 'Fady', 'Fawzy'],
    },
  ];

  void _answerQuestion() => setState(() => _questionIndex++);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: _questionIndex < _questions.length
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Question(_questions[_questionIndex]['question'] as String),
                    const SizedBox(height: 16),
                    ...(_questions[_questionIndex]['answers'] as List<String>)
                        .map(
                          (answer) => Answer(
                            answerText: answer,
                            onPressed: _answerQuestion,
                          ),
                        )
                        .toList()
                  ],
                )
              : const Center(child: Text('You did it!')),
        ),
      ),
    );
  }
}
