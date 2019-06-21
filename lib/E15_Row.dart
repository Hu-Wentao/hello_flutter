import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Row布局 与 Expanded的使用",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("title"),
        ),
        body: new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: (){},
              color: Colors.deepPurpleAccent,
              child: new Text("aaaa"),
            ),
            new Expanded(
              child: new RaisedButton(
                onPressed: (){},
                color: Colors.green,
                child: new Text("data"),
              ),
            ),
            new RaisedButton(
              onPressed: (){},
              color: Colors.amber,
              child: new Text("xxxx"),
            )
          ],
        ),
      ),
    ));
