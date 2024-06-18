import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'package:quiz_app/data/questions.dart';

//widget class
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  //accept chooseAnswer function as a value from quiz.dart
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

//state class
class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  //answerQuestion also should accpet selectedAnswer so can transfer the data to selectedAnswer to make list
  //and can forward to onSelectAnswer
  void answerQuestion(String selectedAnswer) {
    //(widget.) give access to widget class to use at state class
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            //take answer list but not shuffle
            // const SizedBox(height: 30),...currentQuestion.answer.map(
            //   (answers) {return AnswerButton(answerText: answers,onTap: () {},);},
            // ),

            //take answer list that already shuffle
            const SizedBox(height: 30),
            ...currentQuestion.getShuffleAnswers().map(
              (answers) {
                return AnswerButton(
                  answerText: answers,
                  //onTap: answerQuestion,
                  onTap: () {
                    answerQuestion(answers);
                  },
                );
              },
            ),
            // AnswerButton(
            //   answerText: currentQuestion.answer[0],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answer[1],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answer[2],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answer[3],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
