import 'package:flutter/material.dart';
import 'package:quiz_app/image_body.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = ImageContainer(switchScreen);
  //   super.initState();
  // }
  // or you can use
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 40, 131, 122),
                Color.fromARGB(255, 31, 95, 89)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? ImageContainer(switchScreen)
              : const QuestionsScreen(),
          // just have a ternary operator to check if the activeScreen is
          // equal to start-screen then show the ImageContainer else show the QuestionsScreen
        ),
      ),
    );
  }
}
