import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "...标题:",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("演示从子页面获取返回值 与 SnackBar"),
      ),
      body: Builder(
        // 这里使用了一个Builder 得到了新的 BuildContext,
        // 也可以创建一个自定义的类, 继承自StateLessWidget, 得到新的BuildContext
        builder: (context) =>
            Center(
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: (){
                  _goPageAndGetParam(context);
                },
//                onPressed: () => _goPageAndGetParam(context),
                child: Text('进入子页面'),
              ),
            ),
      ),
//      body: Builder(
//        builder: (context) => {
//              Center(
//                child: RaisedButton(
//                  onPressed: () {
//                    _goPageAndGetParam(context);
//                  },
//                  child: Text("进入子页面"),
//                ),
//              )
//            },
//      ),
    );
  }
}

_goPageAndGetParam(BuildContext context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => SubPage()));

  // 在这里显示返回的结果
  Scaffold.of(context)
      .showSnackBar(new SnackBar(content: Text("从子页面获取的信息是:$result")));
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("子页面标题")),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("lalal a"),
              onPressed: () {
                Navigator.pop(context, "得到参数a"); // 第二个参数会返回值
              },
            ),
            RaisedButton(
              child: Text("lalal b"),
              onPressed: () {
                Navigator.pop(context, "得到参数b");
              },
            ),
            RaisedButton(
              child: Text("lalal c"),
              onPressed: () {
                Navigator.pop(context, "得到参数c");
              },
            ),
          ],
        ),
      ),
    );
  }
}
