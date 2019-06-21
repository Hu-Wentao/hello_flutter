import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(
        new List<String>.generate(1000, (i) => "this is $i")  // 产生一个List
    ));

class MyApp extends StatelessWidget {
  final List<String> itemContents;

  MyApp(this.itemContents) : super();

  // 获取一个 List<Widget>
  List<Widget> getGridItem(List<String> src) {
    var res = new List<Widget>();
    for (var value in src) {
      res.add(new Text(value));
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title",
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text("app bar"),
          ),
          body: new GridView.count(
            padding: EdgeInsets.all(10),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            children: getGridItem(itemContents),
          ),
        ),
      ),
    );
  }
}
