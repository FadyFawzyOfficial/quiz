import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void answerQuestion() => print('Answer chosen!');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Column(
          children: [
            const Text('The Question?'),
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
