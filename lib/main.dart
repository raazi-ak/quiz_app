import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor:
          Color.fromARGB(255, 31, 95, 89) // Set your desired color here
      ));

  runApp(const Quiz());
}
