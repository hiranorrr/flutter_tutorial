import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> titleList = ['Amazon', '楽天', 'Yahoo!'];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("パスワード管理"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return  Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text(titleList[index]),
                  //indexは0から始まり、繰り返される度に+1される変数
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => NextPage(titleList[index]))
                    );
                  },
                ),//ListTile
                Divider(),//Divider
              ]//<widget>[]
          );//Column
        },
        itemCount: titleList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add('Google');
          setState(() {
          }); //画面情報を再build
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//todo ホーム画面のタイトル変更
//todo リスト表示
//todo リスト間に区切り線表示
//todo リスト表示を動的に
//todo フロートアクションボタンをタップしたときに，リストに一つ追加
//todo 新しい画面を作成し，リストをタップしたときに遷移
//todo 新しい画面のレイアウトを作成
//todo 新しい画面にリストからデータを引き継ぐ
