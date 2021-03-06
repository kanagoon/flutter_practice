import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/intermediate_page.dart';
import 'package:flutter_practice/sample_answers/beginner_page.dart';
import 'package:flutter_practice/sample_answers/preliminary_page.dart';
import 'pages/beginner_page.dart';

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
      debugShowCheckedModeBanner: false,
      // ここで最初に表示する画面を変更
      home: const IntermediatePage(),
      // home: const BeginnerPage(),
    );
  }
}
