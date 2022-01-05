import 'package:flutter/material.dart';

// 準備

// データ・状態を保持しておく必要がないのでStatelessWidgetを使用
class AnswerPreliminaryPage extends StatelessWidget {
  const AnswerPreliminaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold: 1つの画面の土台となるWidget
    return Scaffold(
      backgroundColor: Colors.white, // 背景色
      appBar: AppBar(
        title: const Text(
          "Flutter Practice",
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 空きスペースを均等に配置
        children: [
          Column(
            children: [
              const SizedBox(height: 15), // 上に空白のスペース
              const Text("テストボタン1"),
              ElevatedButton(
                onPressed: () {
                  // ここに押した際の動作を書く
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: const Text("ログイン"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: const Text("新規登録"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: const Text("設定"),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 15), // 上に空白のスペース
              const Text("テストボタン2"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: const Text("入力"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: const Text("編集"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: const Text("削除"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
