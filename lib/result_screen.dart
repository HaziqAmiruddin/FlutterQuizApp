import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import './questions_summary.dart';

class ResultsSreen extends StatelessWidget {
  const ResultsSreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chosenAnswers;

  //move the answer user pick to here
  List<Map<String, Object>> getSummaryData() {
    //to generate the list
    final List<Map<String, Object>> summary = [];

    //
    for (var i = 0; i < chosenAnswers.length; i++) {
      //add item to summary(map data)
      summary.add(
        {
          //summarize the question, what is the question, the correct answer & the user chosen answer
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answer[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    //.where allow you to filter the list you call.
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            //const Text('You answered X out of Y questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: QuestionsSummary(
                summaryData: getSummaryData(),
              ),
            ),
            //const Text('List of answers and questions....'),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
