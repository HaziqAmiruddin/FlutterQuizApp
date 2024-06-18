import 'package:flutter/material.dart';

class QuizQuestion extends StatelessWidget {
  const QuizQuestion(this.text, this.answer, {super.key});

  final String text;
  final List<String> answer;

  List<String> getShuffleAnswers() {
    //below function do - take answer list then make new shuffle list
    //name chain comment
    //below function only take list then shiffle the list to make new list
    //but dont return the new list data
    //List.of(answer).shuffle();

    //below is the function to make new shuffle list then return to us.
    //so we can use the new list
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
