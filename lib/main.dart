import 'package:flutter/material.dart';
import 'package:quizzapp/quizscreen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: scren1(),
    ),
  );
}

class scren1 extends StatelessWidget {
  const scren1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.all(20),
              child:
                  Image.asset('images/male-hand-holding-megaphone-quiz.png')),
          Row(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const home(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Click Here to enter the quiz',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
