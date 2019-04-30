import 'package:flutter/material.dart';

// 在您输入时，Android Studio会为您提供有关库导入的建议。然后它将呈现灰色的导入字符串，让您知道导入的库尚未使用（到目前为止）
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // Tip: “驼峰命名法” (称为 “upper camel case” 或 “Pascal case” ), 表示字符串中的每个单词（包括第一个单词）都以大写字母开头。所以，“uppercamelcase” 变成 “UpperCamelCase”
//    final wordPair = new WordPair.random();
    return new MaterialApp(
        title: 'Startup Name Generator',
        debugShowCheckedModeBanner: false,  // 去除右上角Debug标签
        theme: new ThemeData(
            primarySwatch: Colors.orange,
        ),
        home: new RandomWords(),

//      home: new Scaffold(
//        appBar: new AppBar(
////          title: new Text('welcome to flutter'),
//        ),
//        body: new Center(
////          child: new Text('hello world'),
////          child: new Text(wordPair.asPascalCase),
//        child: new RandomWords(),
//        ),
//      ),
    );
  }
  
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

//class RandomWordsState extends State<RandomWords> {
//  @override
//  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new Text(wordPair.asPascalCase);
//  }
//}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions () {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
      // 在偶数行，该函数会为单词对添加一个ListTile row.
      // 在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
      // 注意，在小屏幕上，分割线看起来可能比较吃力。
      itemBuilder: (context, i) {
        // 在每一列之前，添加一个1像素高的分隔线widget
        if (i.isOdd) return new Divider();
        // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
        // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
        final index = i ~/ 2;
        // 如果是建议列表中最后一个单词对
        if (index >= _suggestions.length) {
           // ...接着再生成10个单词对，然后添加到建议列表
           _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);

    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite: Icons.favorite_border,
        color: alreadySaved ? Colors.red:null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random(); // 删除这两行
//    return new Text(wordPair.asPascalCase);
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }




}


