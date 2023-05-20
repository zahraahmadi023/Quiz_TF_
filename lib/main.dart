import 'package:flutter/material.dart';
import 'package:pro_quiz_pracme/question.dart';
import 'package:pro_quiz_pracme/quizBrin.dart';

quizBrin quizbrin1 = quizBrin();

void main() {
  runApp(Quiz());
}
class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 237, 228, 220),
        body: pagequiz(),
      ),
    );
  }
}

class pagequiz extends StatefulWidget {
  const pagequiz({super.key});
  @override
  State<pagequiz> createState() => _pagequizState();
}

class _pagequizState extends State<pagequiz> {
  List<Icon> scorKeeper = [
    const Icon(
      Icons.check,
      color: Color.fromARGB(255, 231, 155, 160),
    ),
    const Icon(Icons.close, color: Color.fromARGB(255, 160, 141, 254)),
    // const Icon(Icons.check,color: Color.fromARGB(255, 52, 240, 225),),
  ];
  // List<String> QuizTexe=[
  //   'Approximately one quarter of human bones are in the feet.',
  //   'It is illegal to pee in the Ocean in Portugal',
  //   'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
  // ];
  // List<bool> answer=[
  //   false,
  //   true,
  //   true,
  // ];
  //question question1=question(q='Buzz Aldrin\'s mother\'s maiden name was "Moon\".', a=true);

  @override
  Widget build(BuildContext context) {
    // print(question1.quizNumber);
    // print(question1.answer);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizbrin1.getQuestinText(),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 25.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: GestureDetector(
            onTap: () {
              bool correctAnswer = quizbrin1.getAnswerText();
              if (correctAnswer == true) {
                print('answer user is true');
                scorKeeper.add(
                  const Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 231, 155, 160),
                  ),
                );
              } else {
                print('answer user wrong ');
                scorKeeper.add(
                  const Icon(Icons.close,
                      color: Color.fromARGB(255, 160, 141, 254)),
                );
              }
              setState(() {
                quizbrin1.nextQuestion();
                //quizNumber++;
              });
            },
            child: Container(
              width: double.infinity,
              height: 90,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 231, 155, 160),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: const Center(
                  child: Text(
                "true",
                style: TextStyle(fontSize: 30, color: Colors.black),
              )),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: GestureDetector(
            onTap: () {
              bool correctAnswer = quizbrin1.getAnswerText();
              if (correctAnswer == false) {
                print('answer user is false');
                scorKeeper.add(
                  const Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 231, 155, 160),
                  ),
                );
              } else {
                print('answer user wrong ');
                scorKeeper.add(
                  const Icon(Icons.close,
                      color: Color.fromARGB(255, 160, 141, 254)),
                );
              }
              setState(() {
                quizbrin1.nextQuestion();
                //quizNumber++;
              });
            },
            child: Container(
              width: double.infinity,
              height: 90,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 160, 141, 254),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: const Center(
                  child: Text(
                "false",
                style: TextStyle(fontSize: 30, color: Colors.black),
              )),
            ),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        Row(
          children: scorKeeper,
        )
      ],
    );
  }
}
