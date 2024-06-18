import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  //pass already generated list from result_screen summary data to hear
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    //children want list in widget
    //so, convert summaryData from String,object to map
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            //data is function pass to map method (naming is up to you)
            (data) {
              return SummaryItem(data);
              //Row(
              //   children: [
              //     //as int mean you tell flutter we know we will get this value in this data
              //     // .toString means convert the data to string
              //     Text(
              //       ((data['question_index'] as int) + 1).toString(),
              //     ),
              //     //combine row & colum
              //     SingleChildScrollView(
              //       child: Column(
              //         children: [
              //           Text(data['question'] as String),
              //           const SizedBox(
              //             height: 5,
              //           ),
              //           Text(data['user_answer'] as String),
              //           Text(data['correct_answer'] as String),
              //         ],
              //       ),
              //     ),
              //   ],
              // );
            },
            //iterable object convert using toList
          ).toList(),
        ),
      ),
    );
  }
}
