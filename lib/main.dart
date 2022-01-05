import 'package:flutter/material.dart';
import 'package:flutter_practice/sample_answers/preliminary_page.dart';
import 'pages/preliminary_page.dart';

void main() {
  runApp(const PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ここで最初に表示する画面を変更
      // home: const PreliminaryPage(),
      home: const AnswerPreliminaryPage(),
    );
  }
}
