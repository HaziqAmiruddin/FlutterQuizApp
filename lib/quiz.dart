//guna widget untuk navigate screen
// import 'package:flutter/material.dart';
// import 'package:quiz_app/questions_screen.dart';
// import 'package:quiz_app/start_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   Widget? activeScreen;

//   @override
//   void initState() {
//     activeScreen = StartScreen(switchScreen);
//     // TODO: implement initState
//     super.initState();
//   }

//   void switchScreen() {
//     setState(() {
//       activeScreen = const QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.purple,
//                 Colors.purple,
//               ],
//             ),
//           ),
//           child: activeScreen,
//         ),
//       ),
//     );
//   }
// }

//guna string untuk navigate
// import 'package:flutter/material.dart';
// import 'package:quiz_app/questions_screen.dart';
// import 'package:quiz_app/start_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   var activeScreen = 'start-screen';

//   void switchScreen() {
//     setState(() {
//       activeScreen = 'question-screen';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.purple,
//                 Colors.purple,
//               ],
//             ),
//           ),
//           child: activeScreen == 'start-screen'
//               ? StartScreen(switchScreen)
//               : const QuestionsScreen(),
//         ),
//       ),
//     );
//   }
// }

//guna if else untuk navigate
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import './result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //make list of selected answers user pick
  List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  //string answer expected to get answer in string to gather at list
  void chooseAnswer(String answer) {
    //add selected answer user pick to selectedanswers list
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      //switch back to start screen

      setState(() {
        //reset selectedAnswer to 0 back otherwise error will occurs
        //selectedAnswers = [];
        //change to last page
        //activeScreen = 'start-screen';
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      //pass choose answer as a value to question screen
      //after naming the function at question_screen.dart
      //change chooseAnswer to your naming at question_screen.dart
      // screenWidget = const QuestionsScreen(chooseAnswer);
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsSreen(
        //pass user answer pick list to result screen.dart
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // title: const Text('Quiz Evaluation'),
          title: const Text('Flutter Knowledge'),
          backgroundColor: const Color.fromARGB(255, 180, 117, 228),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.purple,
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
