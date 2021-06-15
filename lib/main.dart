import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz/quiz_sreen.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Quizz App",
      theme: ThemeData.dark(),
      home: QuizScreen(),

    );
  }
}