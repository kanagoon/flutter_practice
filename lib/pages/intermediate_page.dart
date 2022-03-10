import 'package:flutter/material.dart';

// 中級

class IntermediatePage extends StatelessWidget {
  const IntermediatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ここを実装
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(), // 上のバー
    );
  }

  // 上のAppバー
  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "Flutter Practice2",
        style: TextStyle(color: Colors.white),
      ),
      // AppBarの右端のボタン（リストなので複数可）
      actions: [
        IconButton(
          icon: const Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
