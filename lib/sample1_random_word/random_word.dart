import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


//一个可变的组件 父类
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();

}

//创建一个生成随机单词 的 非静态（Stateful）组件 子类
class RandomWordsState extends State<RandomWords> {

  // data
  final _suggestions = <WordPair>[];

  // style
  final _biggerFont = const TextStyle(fontSize: 22.0);


  // like wordList
  final _like_wordList = new Set<WordPair>();


  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('This is a List'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
//      跳转页面用
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
//        类似于 Android ListView 控件循环利用的无限滑动
        itemBuilder: (context, i) {
          if (i.isOdd) return new Divider();
          // 3~/2 = 1 , 5~/2 = 2
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final alreadyLiked = _like_wordList.contains(pair);
    return new ListTile(
      title: new Text(pair.asPascalCase, style: _biggerFont,),
      trailing: new Icon(
        alreadyLiked ? Icons.favorite : Icons.favorite_border,
        color: alreadyLiked ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadyLiked) {
            _like_wordList.remove(pair);
          } else {
            _like_wordList.add(pair);
          }
        });
      },
    );
  }


  void _pushSaved() {
    Navigator.of(context).push(
        new MaterialPageRoute(builder: (context) {
          final tiles = _like_wordList.map((pair) {
            return new ListTile(
              title:new Text(pair.asPascalCase, style:_biggerFont)
            );
          });

          final divided = ListTile.divideTiles(context: context, tiles: tiles,)
              .toList();
          return new Scaffold(
            appBar: new AppBar(
              title:new Text('Liked Suggestions')
            ),
            body:new ListView(children: divided,)
          );
        })
    );
  }
}

