import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});
  @override
  Widget build(context) {
    return Container(
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
      child: Center(
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
      ),
    );
  }
}
