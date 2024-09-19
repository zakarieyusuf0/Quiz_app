import 'package:flutter/material.dart';
import 'package:quizzapp/main.dart';

class Result extends StatelessWidget {
  final int answer;
  final int falses;
  final int totalmarks;

  const Result(
      {Key? key,
      required this.answer,
      required this.falses,
      required this.totalmarks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go back'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('Result Screen', style: TextStyle(fontSize: 44)),
            ),
            Text(
              'You got it right: $answer',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'You got it wrong: $falses',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'Total Marks You got is : $totalmarks',
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const scren1(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Enter Again',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
