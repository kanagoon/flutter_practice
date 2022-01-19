import 'package:flutter/material.dart';

// 初級 解答例

// データ・状態を保持しておく必要がないのでStatelessWidgetを使用
class AnswerBeginnerPage extends StatelessWidget {
  const AnswerBeginnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold: 1つの画面の土台となるWidget
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(), // 上のバー
      floatingActionButton: _fab(), // 右下の浮いている丸いボタン
      // メイン部分
      body: SingleChildScrollView(
        // SingleChildScrollViewでおおうことで
        // 画面サイズからはみ出てた場合にスクロールできるようになる
        padding: const EdgeInsets.symmetric(horizontal: 20), // 左右対称の余白
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            _header(), // 上のテキストと運動開始ボタン
            const SizedBox(
              height: 30,
            ),
            _activityPanel(), // アクティビティ
            const SizedBox(
              height: 20,
            ),
            _dataPanel(), // データ
            const SizedBox(
              height: 40,
            ),
            _footer(), // 下のフレンド検索ボタンや画像
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  // 上のAppバー
  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "Flutter Practice",
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

  // 右下のFAB
  FloatingActionButton _fab() {
    return FloatingActionButton(
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }

  // 上部のテキストと運動開始ボタン
  Widget _header() {
    return Column(
      children: [
        // 「 Hello! 」
        const Align(
          alignment: Alignment.centerLeft, // 左寄せにする
          child: Text(
            "Hello!",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // 運動開始ボタン
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.flag,
          ),
          style: ElevatedButton.styleFrom(
            // ボタンの背景色
            primary: Colors.lightGreen,
            // 背景の上に置く文字やアイコンの色
            onPrimary: Colors.white,
          ),
          label: const Text(
            "運動を開始する",
          ),
        ),
      ],
    );
  }

  // 「本日のアクティビティ」パネル
  Widget _activityPanel() {
    return Container(
      height: 180, // 高さを指定
      color: Colors.blue[300],
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "本日のアクティビティ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          _activityRow(
            icon: Icons.directions_walk,
            title: "ウォーキング",
            value: "25分",
          ),
          _activityRow(
            icon: Icons.directions_run,
            title: "ランニング",
            value: "10分",
          ),
          _activityRow(
            icon: Icons.fitness_center,
            title: "トレーニング",
            value: "45分",
          ),
        ],
      ),
    );
  }

  // アクティビティの項目の1行分
  //　アイコン、タイトル、値を引数で受け取る
  // 引数を{}で囲っておくと、引数を渡す際に順番関係なしに名前で指定できる
  // 必須の引数には「required」をつける
  Widget _activityRow({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // アイコンとアクティビティ名
        Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            )
          ],
        ),
        // 行った時間
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  // 「データ」パネル
  Widget _dataPanel() {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // Containerに装飾をつける
      decoration: BoxDecoration(
        color: Colors.pink[300],
        // 角丸の半径を指定する
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "データ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              // Expandedで囲むと、囲んだWidgetはRowやColumnの中でめいいっぱい広がろうとする
              // flexで比率を指定できる
              // 今回は全てのWidgetがみんなできるだけ広がろうとするので、ちょうど３等分になる
              Expanded(
                flex: 1,
                child: _dataColumn(title: "歩数", value: "5,210", unit: "歩"),
              ),
              Expanded(
                flex: 1,
                child: _dataColumn(title: "平均心拍数", value: "68", unit: "BPM"),
              ),
              Expanded(
                flex: 1,
                child: _dataColumn(title: "消費カロリー", value: "256", unit: "Kcal"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // データの1つの項目
  // タイトル、値、単位を引数で受け取る
  Widget _dataColumn({
    required String title,
    required String value,
    required String unit,
  }) {
    return Column(
      children: [
        // データ名
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // データの値
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        // 単位
        Text(
          unit,
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  // 下のフレンド追加ボタンと画像
  Widget _footer() {
    return Column(
      children: [
        const Text(
          "フレンドと運動の記録をシェアしよう",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.search),
          label: const Text("フレンドを探す"),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue[300],
            onPrimary: Colors.white,
            // 両端が丸い形にする
            shape: const StadiumBorder(),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        // asset（このプロジェクト内に保存したファイル）から画像を読み込んで表示
        Image.asset(
          // 画像が保存されている場所
          "images/fitness_sample.jpg",
          // 高さ
          height: 170,
        ),
      ],
    );
  }
}
