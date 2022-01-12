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
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.white),
            onPressed: () {
              // Pressed Action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 10.0,),
                child: const Text(
                  "Hello!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.flag),
                label: Text('運動を開始する'),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 10,
                  ),
                  onPrimary: Colors.white,
                  primary: Colors.lightGreen, //ボタンの背景色
                ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 10.0,),
                padding: EdgeInsets.only(top: 30),
                width: 400,
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    children: [
                      TextSpan(
                        text: '本日のアクティビティ\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      WidgetSpan(
                        child: Icon(Icons.directions_walk, color: Colors.white),
                      ),
                      TextSpan(text: 'ウォーキング          25分\n\n'),
                      WidgetSpan(
                        child: Icon(Icons.directions_run, color: Colors.white),
                      ),
                      TextSpan(text: 'ランニング              10分\n\n'),
                      WidgetSpan(
                        child: Icon(Icons.fitness_center, color: Colors.white),
                      ),
                      TextSpan(text: 'トレーニング          45分\n\n'),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.circular(40),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 10.0,),
                padding: EdgeInsets.only(top: 30),
                width: 400,
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    children: [
                      TextSpan(
                        text: 'データ\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      TextSpan(text: 'ウォーキング          25分\n\n'),
                      WidgetSpan(
                        child: Icon(Icons.directions_run, color: Colors.white),
                      ),
                      TextSpan(text: 'ランニング              10分\n\n'),
                      WidgetSpan(
                        child: Icon(Icons.fitness_center, color: Colors.white),
                      ),
                      TextSpan(text: 'トレーニング          45分\n\n'),
                    ],
                  ),
                ),
              ),
              const Text(
                "フレンドと運動の記録をシェアしよう",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  label: Text('フレンドを探す'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    onPrimary: Colors.white,
                    primary: Colors.lightBlueAccent, //ボタンの背景色
                  ),
                ),
              ),
              Image.asset(
                'images/fitness_sample.jpg',
                width: 400,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Icon(Icons.add, color: Colors.white)
      ),
    );
  }
}
