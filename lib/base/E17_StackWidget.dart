import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack 示例',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '演示 Stack 与 Positioned'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key); // 构造方法, 调用父类构造
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Stack(
          // child叠堆起来
//          alignment: Alignment.center, // 设置children的对齐方式
          alignment: const FractionalOffset(1, 1),
          //上层Widget相对于下层Widget的位置, 参数取值为[0.0, 1.0]
          children: <Widget>[
            new Positioned(
                // 该控件类似 CSS 中的绝对定位
                top: 10,
                left: 5,
                child: Text("this_is_test_content_asdfghjkk;qwer")),
            new CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://github.com/Hu-Wentao/Hu-Wentao.github.io/blob/master/images/avatar.jpg?raw=true"),
              radius: 100,
            ),
            new Container(
              color: Colors.red,
              width: 40,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
