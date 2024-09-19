import 'package:flutter/material.dart';
import 'package:quizzapp/resultscreen.dart';
import 'package:quizzapp/questions.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Question> questions = [
    Question(q: 'Somalia is located in East Africa. ', a: true),
    Question(q: 'Kismaayo is the capital city of Somalia.', a: false),
    Question(
        q: 'Somali girls are considered the most beautiful girls in the world.',
        a: true),
    Question(
        q: 'The Somali flag is red with a white star in the center.', a: false),
    Question(
        q: 'The Current President of Somalia is H.E President Dr Hassan Sheikh Mohamud.',
        a: true),
  ];

  int questionindex = 0;
  int correctanswers = 0;
  int falseanswers = 0;
  int total_marks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0d1b2a),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff0d1b2a),
        elevation: 20,
        title: const Text(
          'Go back',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                questions[questionindex].questionName!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 22, right: 22),
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        final isCorrect =
                            questions[questionindex].questionAnswer;

                        if (isCorrect == true) {
                          print('Waa Saxday');
                          setState(() {
                            correctanswers = correctanswers + 1;
                          });
                        } else {
                          print('Waa Qaladay');
                          setState(() {
                            falseanswers = falseanswers + 1;
                          });
                        }
                        setState(() {
                          if (questionindex < questions.length - 1) {
                            questionindex++;
                          } else {
                            total_marks = correctanswers;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Result(
                                  answer: correctanswers,
                                  falses: falseanswers,
                                  totalmarks: total_marks,
                                ),
                              ),
                            );
                          }
                        });
                      },
                      child: const Text(
                        'True',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 22, right: 22),
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        final isfalses =
                            questions[questionindex].questionAnswer;

                        if (isfalses == false) {
                          print('Waa saxday');
                          setState(() {
                            correctanswers = correctanswers + 1;
                          });
                        } else {
                          print('Waa qaladay');
                          setState(() {
                            falseanswers = falseanswers + 1;
                          });
                        }
                        setState(() {
                          if (questionindex < questions.length - 1) {
                            questionindex++;
                          } else {
                            total_marks = correctanswers;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Result(
                                  answer: correctanswers,
                                  falses: falseanswers,
                                  totalmarks: total_marks,
                                ),
                              ),
                            );
                          }
                        });
                      },
                      child: const Text(
                        'False',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
