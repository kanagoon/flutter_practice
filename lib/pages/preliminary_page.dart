import 'package:flutter/material.dart';

// 準備

class PreliminaryPage extends StatelessWidget {
  const PreliminaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ここを実装
    return MaterialApp(
      title: 'preliminary_page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Practice'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 32),
                  child: Text('テストボタン1'),
                ),
                Spacer(flex: 1),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text('ログイン'),
                ),
                Spacer(flex: 1),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text('新規登録'),
                ),
                Spacer(flex: 1),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text('設定'),
                ),
                Spacer(flex: 100),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 32),
                  child: Text('テストボタン2'),
                ),
                Spacer(flex: 1),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text('入力'),
                ),
                Spacer(flex: 1),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text('編集'),
                ),
                Spacer(flex: 1),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text('削除'),
                ),
                Spacer(flex: 100),
              ],
            ),
          ],
        ),
      ),
    );
    return Scaffold();
  }
}
