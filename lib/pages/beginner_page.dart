import 'package:flutter/material.dart';

// 初級

class BeginnerPage extends StatelessWidget {
  const BeginnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ここを実装
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Practice',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Pressed Action
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Hello!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),),
          ],
        ),
      ),
    );
  }
}
