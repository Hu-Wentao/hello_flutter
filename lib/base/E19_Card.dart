import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
    title: "title",
    home: Card(
      child: Scaffold(
        appBar: AppBar(title: Text("Card 布局演示, divider 组件演示")),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text("title text"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.ac_unit),
            ),
            Divider(),
            ListTile(
              title: Text("title text"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.ac_unit),
            ),
            Divider(),
            ListTile(
              title: Text("title text"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.ac_unit),
            ),
            Divider(),
            ListTile(
              title: Text("title text"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.ac_unit),
            ),
            Divider(),
            ListTile(
              title: Text("title text"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.ac_unit),
            ),
            Divider(),
            ListTile(
              title: Text("title text"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.ac_unit),
            ),
            Divider(),
          ],
        ),
      ),
    )));
