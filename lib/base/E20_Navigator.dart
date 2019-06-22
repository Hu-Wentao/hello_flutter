import 'package:flutter/material.dart';

// 注意, 这里每一个Page返回值都不应该是MaterialApp, 否则Navigator无法导航
void main() => runApp(MaterialApp(home: FirstPage(),));

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("演示Navigator, Page1")),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, // 使用Navigator 组件, 注意,
                  MaterialPageRoute(builder: (context) => new SecondPage()));
            },
            child: Text("Page 1"),
          ),
        ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("show Page 2"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context); // 返回上一个
            },
            child: Text("page 2"),
          ),
        ),
    );
  }
}
