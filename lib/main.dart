import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  final questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  void answerQuestion() => setState(() => questionIndex++);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz')),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 chosen!'),
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // ...
                print('Answer 3 chosen!');
              },
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
