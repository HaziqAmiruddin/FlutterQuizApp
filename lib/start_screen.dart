import 'package:flutter/material.dart';
//import './quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  //execute switchscreen function at quiz.dart.
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assests/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(45, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.3,
          //   child: Image.asset(
          //     'assests/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'How well do you know about flutter ?',
            //'learn Flutter the fun way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.account_tree),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
///Haziq Try
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import './quiz.dart';

// abstract class StartScreen extends StatefulWidget {
//   const StartScreen(this.startQuiz, {super.key});

//   //execute switchscreen function at quiz.dart.
//   final void Function() startQuiz;
  
//   get audioPlayer => null;

//   Future<void> playMusic() async {
//   int result = await audioPlayer.play('Music/IfYouLoveMe.mp3', isLocal: true);

//   @override
//   State<StartScreen> createState() => _StartScreenState();
// }

// class _StartScreenState extends State<StartScreen> {
//   AudioPlayer player = AudioPlayer();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'assests/images/quiz-logo.png',
//             width: 300,
//             color: const Color.fromARGB(45, 255, 255, 255),
//           ),
//           // Opacity(
//           //   opacity: 0.3,
//           //   child: Image.asset(
//           //     'assests/images/quiz-logo.png',
//           //     width: 300,
//           //   ),
//           // ),
//           const SizedBox(
//             height: 50,
//           ),
//           const Text(
//             'Do you know Haziq ?',
//             //'learn Flutter the fun way',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           OutlinedButton.icon(
//             onPressed: () {
//               widget.startQuiz();
//             },
//             style: OutlinedButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             icon: const Icon(Icons.account_tree),
//             label: const Text('Start Quiz'),
//           ),
//         ],
//       ),
//     );
//   }
// }



////////////////////////////////////////////////////////////////////////////////////////////////////////

//try to add music
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// //import './quiz.dart';

// AudioPlayer audioPlayer = AudioPlayer();

// Future<void> playMusic() async {
//   int result = await audioPlayer.play('Music/IfYouLoveMe.mp3', isLocal: true);
//   if (result == 1) {
//     // Success
//     print('Music started playing');
//   }
// }

// class StartScreen extends StatelessWidget {
//   // const StartScreen(this.startQuiz, {super.key});

//   // //execute switchscreen function at quiz.dart.
//   // final void Function() startQuiz;

//   const StartScreen(this.startQuiz, {Key? key}) : super(key: key);
//   final void Function() startQuiz;

//   // Call playMusic() in the constructor
//   StartScreen(this.startQuiz) {
//     playMusic();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'assests/images/quiz-logo.png',
//             width: 300,
//             color: const Color.fromARGB(45, 255, 255, 255),
//           ),
//           // Opacity(
//           //   opacity: 0.3,
//           //   child: Image.asset(
//           //     'assests/images/quiz-logo.png',
//           //     width: 300,
//           //   ),
//           // ),
//           const SizedBox(
//             height: 50,
//           ),
//           const Text(
//             'Do you know Haziq ?',
//             //'learn Flutter the fun way',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           OutlinedButton.icon(
//             onPressed: () {
//               startQuiz();
//             },
//             style: OutlinedButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             icon: const Icon(Icons.account_tree),
//             label: const Text('Start Quiz'),
//           ),
//         ],
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////////////////////////////////////

//Chat GPT try
//Fail
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// AudioPlayer audioPlayer = AudioPlayer();

// Future<void> playMusic() async {
//   int result = await audioPlayer.play('Music/IfYouLoveMe.mp3', isLocal: true);
//   if (result == 1) {
//     // Success
//     print('Music started playing');
//   }
// }

// class StartScreen extends StatelessWidget {
//   final void Function() startQuiz;

//   StartScreen(this.startQuiz, {Key? key}) : super(key: key) {
//     playMusic();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'assests/images/quiz-logo.png',
//             width: 300,
//             color: const Color.fromARGB(45, 255, 255, 255),
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           const Text(
//             'Do you know Haziq?',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           OutlinedButton.icon(
//             onPressed: startQuiz,
//             style: OutlinedButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             icon: const Icon(Icons.account_tree),
//             label: const Text('Start Quiz'),
//           ),
//         ],
//       ),
//     );
//   }
// }
/////////////////////////////////////////////////////////////////////////////////////////////////////////

//Second Try Chat GPT
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class StartScreen extends StatefulWidget {
//   final void Function() startQuiz;

//   const StartScreen(this.startQuiz, {Key? key}) : super(key: key);

//   @override
//   _StartScreenState createState() => _StartScreenState();
// }

// class _StartScreenState extends State<StartScreen> {
//   AudioPlayer audioPlayer = AudioPlayer();

//   @override
//   void initState() {
//     super.initState();
//     playMusic();
//   }

//   Future<void> playMusic() async {
//     int result = await audioPlayer.play('Music/IfYouLoveMe.mp3', isLocal: true);
//     if (result == 1) {
//       // Success
//       print('Music started playing');
//     }
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'assests/images/quiz-logo.png',
//             width: 300,
//             color: const Color.fromARGB(45, 255, 255, 255),
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           const Text(
//             'Do you know Haziq?',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           OutlinedButton.icon(
//             onPressed: widget.startQuiz,
//             style: OutlinedButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             icon: const Icon(Icons.account_tree),
//             label: const Text('Start Quiz'),
//           ),
//         ],
//       ),
//     );
//   }
// }
