import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(this.SwitchScreen, {super.key});
  final void Function() SwitchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 170),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(130, 255, 255, 255),
          ),
          const SizedBox(height: 90),
          const Center(
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Color.fromARGB(132, 255, 255, 255),
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: TextButton.icon(
              onPressed: () {
                SwitchScreen();
                HapticFeedback.vibrate();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Start Quiz'),
            ),
          )
        ],
      ),
    );
  }
}
