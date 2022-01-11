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
          'Flutter Practice!',
        ),
      ),

      /*body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Text("Hello!"),
          ],
        ),
      ),*/
    );
  }
}
