import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "生成一个无限的下拉列表",
        home: Scaffold(
          appBar: AppBar(
            title: Text("List Demo"),
          ),
          body: Center(child: RandomWords()),
        ));
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => new _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _biggerFont = new TextStyle(fontSize: 18.0);
  final List<WordPair>  _suggestions= <WordPair>[];

  @override
  Widget build(BuildContext context) {
//    return new Text(randomPair);
    return _buildSuggestions();
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if(i.isEven){
          return new Divider();
        }
        final int index = i~/2;

        if(index>= _suggestions.length){
          // 生成 10 个单词, 添加到建议列表
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair suggestion) {
    return new ListTile(
      title: new Text(suggestion.asPascalCase, style: _biggerFont,),
    );
  }
}


