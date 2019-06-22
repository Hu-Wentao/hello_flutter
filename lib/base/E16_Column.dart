import 'package:flutter/material.dart';

void main()=>runApp(
  new MaterialApp(
    home: new Scaffold(
      appBar: AppBar(
        title: new Text("Column布局的使用"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // 交叉轴的对齐方式, 默认为center,方向是自左向右
        mainAxisAlignment: MainAxisAlignment.center,  // 主轴方向是自上而下
        children: <Widget>[
          new Text("test, test"),
          new Text("test, test, test"),
          new Text("test, test"),
          new Text("test, test, test, test"),
        ],
      ),
    ),
  )
);